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
include CMakeFiles/Blackjack.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/Blackjack.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Blackjack.dir/flags.make

Blackjack_Blackjack.ino.cpp: ../Blackjack.ino
	$(CMAKE_COMMAND) -E cmake_progress_report /home/ben/ClionProjects/Blackjack/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Regnerating Blackjack.ino Sketch"
	/usr/bin/cmake /home/ben/ClionProjects/Blackjack

CMakeFiles/Blackjack.dir/Blackjack_Blackjack.ino.cpp.obj: CMakeFiles/Blackjack.dir/flags.make
CMakeFiles/Blackjack.dir/Blackjack_Blackjack.ino.cpp.obj: Blackjack_Blackjack.ino.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/ben/ClionProjects/Blackjack/build/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/Blackjack.dir/Blackjack_Blackjack.ino.cpp.obj"
	/usr/bin/avr-g++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/Blackjack.dir/Blackjack_Blackjack.ino.cpp.obj -c /home/ben/ClionProjects/Blackjack/build/Blackjack_Blackjack.ino.cpp

CMakeFiles/Blackjack.dir/Blackjack_Blackjack.ino.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Blackjack.dir/Blackjack_Blackjack.ino.cpp.i"
	/usr/bin/avr-g++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/ben/ClionProjects/Blackjack/build/Blackjack_Blackjack.ino.cpp > CMakeFiles/Blackjack.dir/Blackjack_Blackjack.ino.cpp.i

CMakeFiles/Blackjack.dir/Blackjack_Blackjack.ino.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Blackjack.dir/Blackjack_Blackjack.ino.cpp.s"
	/usr/bin/avr-g++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/ben/ClionProjects/Blackjack/build/Blackjack_Blackjack.ino.cpp -o CMakeFiles/Blackjack.dir/Blackjack_Blackjack.ino.cpp.s

CMakeFiles/Blackjack.dir/Blackjack_Blackjack.ino.cpp.obj.requires:
.PHONY : CMakeFiles/Blackjack.dir/Blackjack_Blackjack.ino.cpp.obj.requires

CMakeFiles/Blackjack.dir/Blackjack_Blackjack.ino.cpp.obj.provides: CMakeFiles/Blackjack.dir/Blackjack_Blackjack.ino.cpp.obj.requires
	$(MAKE) -f CMakeFiles/Blackjack.dir/build.make CMakeFiles/Blackjack.dir/Blackjack_Blackjack.ino.cpp.obj.provides.build
.PHONY : CMakeFiles/Blackjack.dir/Blackjack_Blackjack.ino.cpp.obj.provides

CMakeFiles/Blackjack.dir/Blackjack_Blackjack.ino.cpp.obj.provides.build: CMakeFiles/Blackjack.dir/Blackjack_Blackjack.ino.cpp.obj

# Object files for target Blackjack
Blackjack_OBJECTS = \
"CMakeFiles/Blackjack.dir/Blackjack_Blackjack.ino.cpp.obj"

# External object files for target Blackjack
Blackjack_EXTERNAL_OBJECTS =

Blackjack.elf: CMakeFiles/Blackjack.dir/Blackjack_Blackjack.ino.cpp.obj
Blackjack.elf: CMakeFiles/Blackjack.dir/build.make
Blackjack.elf: libuno_LiquidCrystal.a
Blackjack.elf: libuno_EEPROM.a
Blackjack.elf: libuno_CORE.a
Blackjack.elf: CMakeFiles/Blackjack.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable Blackjack.elf"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Blackjack.dir/link.txt --verbose=$(VERBOSE)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Generating EEP image"
	/usr/bin/avr-objcopy -O ihex -j .eeprom --set-section-flags=.eeprom=alloc,load --no-change-warnings --change-section-lma .eeprom=0 /home/ben/ClionProjects/Blackjack/build/Blackjack.elf /home/ben/ClionProjects/Blackjack/build/Blackjack.eep
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Generating HEX image"
	/usr/bin/avr-objcopy -O ihex -R .eeprom /home/ben/ClionProjects/Blackjack/build/Blackjack.elf /home/ben/ClionProjects/Blackjack/build/Blackjack.hex
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Calculating image size"
	/usr/bin/cmake -DFIRMWARE_IMAGE=/home/ben/ClionProjects/Blackjack/build/Blackjack.elf -DMCU=atmega328p -DEEPROM_IMAGE=/home/ben/ClionProjects/Blackjack/build/Blackjack.eep -P /home/ben/ClionProjects/Blackjack/build/CMakeFiles/FirmwareSize.cmake

# Rule to build all files generated by this target.
CMakeFiles/Blackjack.dir/build: Blackjack.elf
.PHONY : CMakeFiles/Blackjack.dir/build

CMakeFiles/Blackjack.dir/requires: CMakeFiles/Blackjack.dir/Blackjack_Blackjack.ino.cpp.obj.requires
.PHONY : CMakeFiles/Blackjack.dir/requires

CMakeFiles/Blackjack.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Blackjack.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Blackjack.dir/clean

CMakeFiles/Blackjack.dir/depend: Blackjack_Blackjack.ino.cpp
	cd /home/ben/ClionProjects/Blackjack/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ben/ClionProjects/Blackjack /home/ben/ClionProjects/Blackjack /home/ben/ClionProjects/Blackjack/build /home/ben/ClionProjects/Blackjack/build /home/ben/ClionProjects/Blackjack/build/CMakeFiles/Blackjack.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Blackjack.dir/depend

