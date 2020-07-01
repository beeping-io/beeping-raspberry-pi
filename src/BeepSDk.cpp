#include <alsa/asoundlib.h>

#include <stdio.h>
#include <iostream>
#include <stdlib.h>

//Core
#include "BeepingCoreLib_api.h"
#include "Globals.h"

//Custom wrapper around portaudio
#include "pa.h"

using namespace std;

/* To exit */
#define GETCH getchar

#define SAMPLE_RATE 44100
#define BUFFER_SIZE  2048

#define PA_CHECKERROR(x) assert( (x) == paNoError);

#define RESET   "\033[0m"
#define RED     "\033[31m"
#define GREEN   "\033[32m"
#define BLUE    "\033[34m"


void* mCore;

char mDecodedString[30];

/* Callback float data to be processed */
static int callback(const void* input,
                    void* output,
                    unsigned long framesPerBuffer,
                    const PaStreamCallbackTimeInfo* time_info,
                    PaStreamCallbackFlags flags,
                    void* userData)
{
    float* in = (float*)input;
    float* out = (float*)output;

         int ret = BEEPING_DecodeAudioBuffer(in, framesPerBuffer, mCore);

         if (ret == -2)
         {
         cout << BLUE << "FOUND_TOKEN ---> -2 " << RESET << endl << endl;
         }
             else if(ret>=0)
         {
             
         cout << "Decode started ---> -2 " << ret << endl << endl;
         }
         else if (ret == -3)
         {
         
        int sizeStringDecoded = BEEPING_GetDecodedData(mDecodedString, mCore);
             
        
         cout << GREEN << mDecodedString << RESET << endl << endl;
             
         //do bad decode
        
         }
         else
         {
             //no data found in this buffer
         }
    return 0;
}

void GetDecodedMode(){
    cout << "DECODE_MODE ---> " << BEEPING_GetDecodedMode(mCore) << endl << endl;
}

int main(int argc, const char * argv[])
{
    int mode = 3; //non audible
    PaStream *stream;
    PaError err;

    /* Initialize lib */
    mCore = BEEPING_Create();
    
    BEEPING_Configure(mode, SAMPLE_RATE, BUFFER_SIZE, mCore);

    /* Init Port audio */
    err = Pa_Initialize();
    PA_CHECKERROR(err);

    /* Use default audio device with one input and output but not needed */
    err = Pa_OpenDefaultStream(&stream
                               ,1
                               ,1
                               ,paFloat32
                               ,SAMPLE_RATE
                               ,2048
                               ,callback
                               ,NULL);
    PA_CHECKERROR(err);

    /* Portaudio start */
    std::cout << RED << "Starting Beeping Demo... \n" << RESET << std::endl;
    err = Pa_StartStream(stream);
    PA_CHECKERROR(err);

    /* Run until user provides keyboard input */
    GETCH();

    /* Stop Portaudio */
    printf("\nDone!\n");
    err = Pa_StopStream(stream);
    PA_CHECKERROR(err);
    
    /* Clean up Portaudio */
    err = Pa_CloseStream(stream);
    PA_CHECKERROR(err);

    err = Pa_Terminate();
    PA_CHECKERROR(err);

    return 0;
}
