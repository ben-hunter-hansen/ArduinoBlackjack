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

# Utility rule file for Blackjack-size.

# Include the progress variables for this target.
include CMakeFiles/Blackjack-size.dir/progress.make

CMakeFiles/Blackjack-size: Blackjack.elf
	$(CMAKE_COMMAND) -E cmake_progress_report /home/ben/ClionProjects/Blackjack/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Calculating Blackjack image size"
	/usr/bin/cmake -DFIRMWARE_IMAGE=/home/ben/ClionProjects/Blackjack/build/Blackjack.elf -DMCU=atmega328p -DEEPROM_IMAGE=/home/ben/ClionProjects/Blackjack/build/Blackjack.eep -P /home/ben/ClionProjects/Blackjack/build/CMakeFiles/FirmwareSize.cmake

Blackjack-size: CMakeFiles/Blackjack-size
Blackjack-size: CMakeFiles/Blackjack-size.dir/build.make
.PHONY : Blackjack-size

# Rule to build all files generated by this target.
CMakeFiles/Blackjack-size.dir/build: Blackjack-size
.PHONY : CMakeFiles/Blackjack-size.dir/build

CMakeFiles/Blackjack-size.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Blackjack-size.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Blackjack-size.dir/clean

CMakeFiles/Blackjack-size.dir/depend:
	cd /home/ben/ClionProjects/Blackjack/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ben/ClionProjects/Blackjack /home/ben/ClionProjects/Blackjack /home/ben/ClionProjects/Blackjack/build /home/ben/ClionProjects/Blackjack/build /home/ben/ClionProjects/Blackjack/build/CMakeFiles/Blackjack-size.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Blackjack-size.dir/depend

