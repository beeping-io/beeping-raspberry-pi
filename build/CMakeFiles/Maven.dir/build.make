# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.17

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Disable VCS-based implicit rules.
% : %,v


# Disable VCS-based implicit rules.
% : RCS/%


# Disable VCS-based implicit rules.
% : RCS/%,v


# Disable VCS-based implicit rules.
% : SCCS/s.%


# Disable VCS-based implicit rules.
% : s.%


.SUFFIXES: .hpux_make_needs_suffix_list


# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/local/Cellar/cmake/3.17.1/bin/cmake

# The command to remove a file.
RM = /usr/local/Cellar/cmake/3.17.1/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/jamiejohn/Desktop/maven

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/jamiejohn/Desktop/maven/build

# Include any dependencies generated for this target.
include CMakeFiles/Maven.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/Maven.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Maven.dir/flags.make

CMakeFiles/Maven.dir/src/BeepSDK.cpp.o: CMakeFiles/Maven.dir/flags.make
CMakeFiles/Maven.dir/src/BeepSDK.cpp.o: ../src/BeepSDK.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/jamiejohn/Desktop/maven/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Maven.dir/src/BeepSDK.cpp.o"
	/usr/local/opt/llvm/bin/clang++ --target=arm-linux-gnueabihf --sysroot=/Users/jamiejohn/sysroot  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Maven.dir/src/BeepSDK.cpp.o -c /Users/jamiejohn/Desktop/maven/src/BeepSDK.cpp

CMakeFiles/Maven.dir/src/BeepSDK.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Maven.dir/src/BeepSDK.cpp.i"
	/usr/local/opt/llvm/bin/clang++ --target=arm-linux-gnueabihf --sysroot=/Users/jamiejohn/sysroot $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/jamiejohn/Desktop/maven/src/BeepSDK.cpp > CMakeFiles/Maven.dir/src/BeepSDK.cpp.i

CMakeFiles/Maven.dir/src/BeepSDK.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Maven.dir/src/BeepSDK.cpp.s"
	/usr/local/opt/llvm/bin/clang++ --target=arm-linux-gnueabihf --sysroot=/Users/jamiejohn/sysroot $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/jamiejohn/Desktop/maven/src/BeepSDK.cpp -o CMakeFiles/Maven.dir/src/BeepSDK.cpp.s

CMakeFiles/Maven.dir/src/pa.cpp.o: CMakeFiles/Maven.dir/flags.make
CMakeFiles/Maven.dir/src/pa.cpp.o: ../src/pa.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/jamiejohn/Desktop/maven/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/Maven.dir/src/pa.cpp.o"
	/usr/local/opt/llvm/bin/clang++ --target=arm-linux-gnueabihf --sysroot=/Users/jamiejohn/sysroot  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Maven.dir/src/pa.cpp.o -c /Users/jamiejohn/Desktop/maven/src/pa.cpp

CMakeFiles/Maven.dir/src/pa.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Maven.dir/src/pa.cpp.i"
	/usr/local/opt/llvm/bin/clang++ --target=arm-linux-gnueabihf --sysroot=/Users/jamiejohn/sysroot $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/jamiejohn/Desktop/maven/src/pa.cpp > CMakeFiles/Maven.dir/src/pa.cpp.i

CMakeFiles/Maven.dir/src/pa.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Maven.dir/src/pa.cpp.s"
	/usr/local/opt/llvm/bin/clang++ --target=arm-linux-gnueabihf --sysroot=/Users/jamiejohn/sysroot $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/jamiejohn/Desktop/maven/src/pa.cpp -o CMakeFiles/Maven.dir/src/pa.cpp.s

# Object files for target Maven
Maven_OBJECTS = \
"CMakeFiles/Maven.dir/src/BeepSDK.cpp.o" \
"CMakeFiles/Maven.dir/src/pa.cpp.o"

# External object files for target Maven
Maven_EXTERNAL_OBJECTS =

Maven: CMakeFiles/Maven.dir/src/BeepSDK.cpp.o
Maven: CMakeFiles/Maven.dir/src/pa.cpp.o
Maven: CMakeFiles/Maven.dir/build.make
Maven: ../libs/libsndfile.so
Maven: ../libs/libogg.so
Maven: ../libs/libFLAC.so
Maven: ../libs/libvorbis.so
Maven: ../libs/libasound.so
Maven: ../libs/libdl.so
Maven: ../libs/libpthread.so
Maven: ../libs/librt.so
Maven: ../libs/libBeepingCore.so
Maven: ../libs/libportaudio.so
Maven: ../libs/libjack.so
Maven: ../libs/libdb-5.3.so
Maven: ../libs/libvorbisenc.so
Maven: CMakeFiles/Maven.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/jamiejohn/Desktop/maven/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable Maven"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Maven.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Maven.dir/build: Maven

.PHONY : CMakeFiles/Maven.dir/build

CMakeFiles/Maven.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Maven.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Maven.dir/clean

CMakeFiles/Maven.dir/depend:
	cd /Users/jamiejohn/Desktop/maven/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/jamiejohn/Desktop/maven /Users/jamiejohn/Desktop/maven /Users/jamiejohn/Desktop/maven/build /Users/jamiejohn/Desktop/maven/build /Users/jamiejohn/Desktop/maven/build/CMakeFiles/Maven.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Maven.dir/depend
