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

# Utility rule file for Blackjack-upload.

# Include the progress variables for this target.
include CMakeFiles/Blackjack-upload.dir/progress.make

CMakeFiles/Blackjack-upload: Blackjack.elf
	/usr/share/arduino/hardware/tools/avrdude -C/usr/share/arduino/hardware/tools/avrdude.conf -patmega328p -carduino -b115200 -P/dev/ttyACM0 -D -V -Uflash:w:/home/ben/ClionProjects/Blackjack/build/Blackjack.hex:i -Ueeprom:w:/home/ben/ClionProjects/Blackjack/build/Blackjack.eep:i

Blackjack-upload: CMakeFiles/Blackjack-upload
Blackjack-upload: CMakeFiles/Blackjack-upload.dir/build.make
.PHONY : Blackjack-upload

# Rule to build all files generated by this target.
CMakeFiles/Blackjack-upload.dir/build: Blackjack-upload
.PHONY : CMakeFiles/Blackjack-upload.dir/build

CMakeFiles/Blackjack-upload.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Blackjack-upload.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Blackjack-upload.dir/clean

CMakeFiles/Blackjack-upload.dir/depend:
	cd /home/ben/ClionProjects/Blackjack/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ben/ClionProjects/Blackjack /home/ben/ClionProjects/Blackjack /home/ben/ClionProjects/Blackjack/build /home/ben/ClionProjects/Blackjack/build /home/ben/ClionProjects/Blackjack/build/CMakeFiles/Blackjack-upload.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Blackjack-upload.dir/depend
