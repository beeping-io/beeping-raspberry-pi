# RaspberryPI

cmake_minimum_required(VERSION 3.1)
project(Beeping)

#gdb debug info
set(CMAKE_BUILD_TYPE RelWithDebInfo)

include_directories(
  ${CMAKE_SYSROOT}/usr/include/c++/8
  ${CMAKE_SYSROOT}/usr/include/${target}/c++/8
)

link_directories(
  ${CMAKE_SYSROOT}/usr/lib/gcc/${target}/8
)

# Includes
include_directories(
    .
    ./include
    ./src/fftooura
)

# Headers
set(HEADERS
  ./include/Encoder.h
  ./include/Decoder.h
  ./include/EncoderAudible.h
  ./include/DecoderAudible.h
  ./include/EncoderNonAudible.h
  ./include/DecoderNonAudible.h
  ./include/EncoderAudibleMultiTone.h
  ./include/DecoderAudibleMultiTone.h
  ./include/EncoderNonAudibleMultiTone.h
  ./include/DecoderNonAudibleMultiTone.h
  ./include/EncoderHiddenMultiTone.h
  ./include/DecoderHiddenMultiTone.h
  ./include/EncoderCustomMultiTone.h
  ./include/DecoderCustomMultiTone.h
  ./include/DecoderAllMultiTone.h
  ./include/Globals.h
  ./include/SpectralAnalysis.h
  ./include/ReedSolomon.h
)

# Main Program
set(PROGRAM
    ./src/BeepSDK.cpp
    ./src/pa.cpp
    ./src/pa.h
)

# Build execuatble for pi
add_executable(${PROJECT_NAME} ${PROGRAM} ${HEADERS})

# Add support to the PROGRAM check so to removes
target_link_libraries(
  ${PROJECT_NAME}
  ~/Desktop/poc/libs/libsndfile.so
  ~/Desktop/poc/libs/libogg.so
  ~/Desktop/poc/libs/libFLAC.so
  ~/Desktop/poc/libs/libvorbis.so
  ~/Desktop/poc/libs/libasound.so
  ~/Desktop/poc/libs/libdl.so
  ~/Desktop/poc/libs/libpthread.so
  ~/Desktop/poc/libs/librt.so
  ~/Desktop/poc/libs/libBeepingCore.so
  ~/Desktop/poc/libs/libportaudio.so
  ~/Desktop/poc/libs/libjack.so
  ~/Desktop/poc/libs/libdb-5.3.so
  ~/Desktop/poc/libs/libvorbisenc.so)
