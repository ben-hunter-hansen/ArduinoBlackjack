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
include CMakeFiles/uno_EEPROM.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/uno_EEPROM.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/uno_EEPROM.dir/flags.make

CMakeFiles/uno_EEPROM.dir/usr/share/arduino/libraries/EEPROM/EEPROM.cpp.obj: CMakeFiles/uno_EEPROM.dir/flags.make
CMakeFiles/uno_EEPROM.dir/usr/share/arduino/libraries/EEPROM/EEPROM.cpp.obj: /usr/share/arduino/libraries/EEPROM/EEPROM.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/ben/ClionProjects/Blackjack/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/uno_EEPROM.dir/usr/share/arduino/libraries/EEPROM/EEPROM.cpp.obj"
	/usr/bin/avr-g++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/uno_EEPROM.dir/usr/share/arduino/libraries/EEPROM/EEPROM.cpp.obj -c /usr/share/arduino/libraries/EEPROM/EEPROM.cpp

CMakeFiles/uno_EEPROM.dir/usr/share/arduino/libraries/EEPROM/EEPROM.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/uno_EEPROM.dir/usr/share/arduino/libraries/EEPROM/EEPROM.cpp.i"
	/usr/bin/avr-g++  $(CXX_DEFINES) $(CXX_FLAGS) -E /usr/share/arduino/libraries/EEPROM/EEPROM.cpp > CMakeFiles/uno_EEPROM.dir/usr/share/arduino/libraries/EEPROM/EEPROM.cpp.i

CMakeFiles/uno_EEPROM.dir/usr/share/arduino/libraries/EEPROM/EEPROM.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/uno_EEPROM.dir/usr/share/arduino/libraries/EEPROM/EEPROM.cpp.s"
	/usr/bin/avr-g++  $(CXX_DEFINES) $(CXX_FLAGS) -S /usr/share/arduino/libraries/EEPROM/EEPROM.cpp -o CMakeFiles/uno_EEPROM.dir/usr/share/arduino/libraries/EEPROM/EEPROM.cpp.s

CMakeFiles/uno_EEPROM.dir/usr/share/arduino/libraries/EEPROM/EEPROM.cpp.obj.requires:
.PHONY : CMakeFiles/uno_EEPROM.dir/usr/share/arduino/libraries/EEPROM/EEPROM.cpp.obj.requires

CMakeFiles/uno_EEPROM.dir/usr/share/arduino/libraries/EEPROM/EEPROM.cpp.obj.provides: CMakeFiles/uno_EEPROM.dir/usr/share/arduino/libraries/EEPROM/EEPROM.cpp.obj.requires
	$(MAKE) -f CMakeFiles/uno_EEPROM.dir/build.make CMakeFiles/uno_EEPROM.dir/usr/share/arduino/libraries/EEPROM/EEPROM.cpp.obj.provides.build
.PHONY : CMakeFiles/uno_EEPROM.dir/usr/share/arduino/libraries/EEPROM/EEPROM.cpp.obj.provides

CMakeFiles/uno_EEPROM.dir/usr/share/arduino/libraries/EEPROM/EEPROM.cpp.obj.provides.build: CMakeFiles/uno_EEPROM.dir/usr/share/arduino/libraries/EEPROM/EEPROM.cpp.obj

# Object files for target uno_EEPROM
uno_EEPROM_OBJECTS = \
"CMakeFiles/uno_EEPROM.dir/usr/share/arduino/libraries/EEPROM/EEPROM.cpp.obj"

# External object files for target uno_EEPROM
uno_EEPROM_EXTERNAL_OBJECTS =

libuno_EEPROM.a: CMakeFiles/uno_EEPROM.dir/usr/share/arduino/libraries/EEPROM/EEPROM.cpp.obj
libuno_EEPROM.a: CMakeFiles/uno_EEPROM.dir/build.make
libuno_EEPROM.a: CMakeFiles/uno_EEPROM.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX static library libuno_EEPROM.a"
	$(CMAKE_COMMAND) -P CMakeFiles/uno_EEPROM.dir/cmake_clean_target.cmake
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/uno_EEPROM.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/uno_EEPROM.dir/build: libuno_EEPROM.a
.PHONY : CMakeFiles/uno_EEPROM.dir/build

CMakeFiles/uno_EEPROM.dir/requires: CMakeFiles/uno_EEPROM.dir/usr/share/arduino/libraries/EEPROM/EEPROM.cpp.obj.requires
.PHONY : CMakeFiles/uno_EEPROM.dir/requires

CMakeFiles/uno_EEPROM.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/uno_EEPROM.dir/cmake_clean.cmake
.PHONY : CMakeFiles/uno_EEPROM.dir/clean

CMakeFiles/uno_EEPROM.dir/depend:
	cd /home/ben/ClionProjects/Blackjack/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ben/ClionProjects/Blackjack /home/ben/ClionProjects/Blackjack /home/ben/ClionProjects/Blackjack/build /home/ben/ClionProjects/Blackjack/build /home/ben/ClionProjects/Blackjack/build/CMakeFiles/uno_EEPROM.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/uno_EEPROM.dir/depend

