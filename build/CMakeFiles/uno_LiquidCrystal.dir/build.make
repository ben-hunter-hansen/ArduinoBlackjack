# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.2

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/ben/ClionProjects/Blackjack

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ben/ClionProjects/Blackjack/build

# Include any dependencies generated for this target.
include CMakeFiles/uno_LiquidCrystal.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/uno_LiquidCrystal.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/uno_LiquidCrystal.dir/flags.make

CMakeFiles/uno_LiquidCrystal.dir/usr/share/arduino/libraries/LiquidCrystal/LiquidCrystal.cpp.obj: CMakeFiles/uno_LiquidCrystal.dir/flags.make
CMakeFiles/uno_LiquidCrystal.dir/usr/share/arduino/libraries/LiquidCrystal/LiquidCrystal.cpp.obj: /usr/share/arduino/libraries/LiquidCrystal/LiquidCrystal.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/ben/ClionProjects/Blackjack/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/uno_LiquidCrystal.dir/usr/share/arduino/libraries/LiquidCrystal/LiquidCrystal.cpp.obj"
	/usr/bin/avr-g++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/uno_LiquidCrystal.dir/usr/share/arduino/libraries/LiquidCrystal/LiquidCrystal.cpp.obj -c /usr/share/arduino/libraries/LiquidCrystal/LiquidCrystal.cpp

CMakeFiles/uno_LiquidCrystal.dir/usr/share/arduino/libraries/LiquidCrystal/LiquidCrystal.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/uno_LiquidCrystal.dir/usr/share/arduino/libraries/LiquidCrystal/LiquidCrystal.cpp.i"
	/usr/bin/avr-g++  $(CXX_DEFINES) $(CXX_FLAGS) -E /usr/share/arduino/libraries/LiquidCrystal/LiquidCrystal.cpp > CMakeFiles/uno_LiquidCrystal.dir/usr/share/arduino/libraries/LiquidCrystal/LiquidCrystal.cpp.i

CMakeFiles/uno_LiquidCrystal.dir/usr/share/arduino/libraries/LiquidCrystal/LiquidCrystal.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/uno_LiquidCrystal.dir/usr/share/arduino/libraries/LiquidCrystal/LiquidCrystal.cpp.s"
	/usr/bin/avr-g++  $(CXX_DEFINES) $(CXX_FLAGS) -S /usr/share/arduino/libraries/LiquidCrystal/LiquidCrystal.cpp -o CMakeFiles/uno_LiquidCrystal.dir/usr/share/arduino/libraries/LiquidCrystal/LiquidCrystal.cpp.s

CMakeFiles/uno_LiquidCrystal.dir/usr/share/arduino/libraries/LiquidCrystal/LiquidCrystal.cpp.obj.requires:
.PHONY : CMakeFiles/uno_LiquidCrystal.dir/usr/share/arduino/libraries/LiquidCrystal/LiquidCrystal.cpp.obj.requires

CMakeFiles/uno_LiquidCrystal.dir/usr/share/arduino/libraries/LiquidCrystal/LiquidCrystal.cpp.obj.provides: CMakeFiles/uno_LiquidCrystal.dir/usr/share/arduino/libraries/LiquidCrystal/LiquidCrystal.cpp.obj.requires
	$(MAKE) -f CMakeFiles/uno_LiquidCrystal.dir/build.make CMakeFiles/uno_LiquidCrystal.dir/usr/share/arduino/libraries/LiquidCrystal/LiquidCrystal.cpp.obj.provides.build
.PHONY : CMakeFiles/uno_LiquidCrystal.dir/usr/share/arduino/libraries/LiquidCrystal/LiquidCrystal.cpp.obj.provides

CMakeFiles/uno_LiquidCrystal.dir/usr/share/arduino/libraries/LiquidCrystal/LiquidCrystal.cpp.obj.provides.build: CMakeFiles/uno_LiquidCrystal.dir/usr/share/arduino/libraries/LiquidCrystal/LiquidCrystal.cpp.obj

# Object files for target uno_LiquidCrystal
uno_LiquidCrystal_OBJECTS = \
"CMakeFiles/uno_LiquidCrystal.dir/usr/share/arduino/libraries/LiquidCrystal/LiquidCrystal.cpp.obj"

# External object files for target uno_LiquidCrystal
uno_LiquidCrystal_EXTERNAL_OBJECTS =

libuno_LiquidCrystal.a: CMakeFiles/uno_LiquidCrystal.dir/usr/share/arduino/libraries/LiquidCrystal/LiquidCrystal.cpp.obj
libuno_LiquidCrystal.a: CMakeFiles/uno_LiquidCrystal.dir/build.make
libuno_LiquidCrystal.a: CMakeFiles/uno_LiquidCrystal.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX static library libuno_LiquidCrystal.a"
	$(CMAKE_COMMAND) -P CMakeFiles/uno_LiquidCrystal.dir/cmake_clean_target.cmake
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/uno_LiquidCrystal.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/uno_LiquidCrystal.dir/build: libuno_LiquidCrystal.a
.PHONY : CMakeFiles/uno_LiquidCrystal.dir/build

CMakeFiles/uno_LiquidCrystal.dir/requires: CMakeFiles/uno_LiquidCrystal.dir/usr/share/arduino/libraries/LiquidCrystal/LiquidCrystal.cpp.obj.requires
.PHONY : CMakeFiles/uno_LiquidCrystal.dir/requires

CMakeFiles/uno_LiquidCrystal.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/uno_LiquidCrystal.dir/cmake_clean.cmake
.PHONY : CMakeFiles/uno_LiquidCrystal.dir/clean

CMakeFiles/uno_LiquidCrystal.dir/depend:
	cd /home/ben/ClionProjects/Blackjack/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ben/ClionProjects/Blackjack /home/ben/ClionProjects/Blackjack /home/ben/ClionProjects/Blackjack/build /home/ben/ClionProjects/Blackjack/build /home/ben/ClionProjects/Blackjack/build/CMakeFiles/uno_LiquidCrystal.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/uno_LiquidCrystal.dir/depend
