# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

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

# The program to use to edit the cache.
CMAKE_EDIT_COMMAND = /usr/bin/ccmake

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/schuli/projects/booos

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/schuli/projects/booos/build

# Include any dependencies generated for this target.
include CMakeFiles/Task_Test.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/Task_Test.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Task_Test.dir/flags.make

CMakeFiles/Task_Test.dir/test/Task_Test.cc.o: CMakeFiles/Task_Test.dir/flags.make
CMakeFiles/Task_Test.dir/test/Task_Test.cc.o: ../test/Task_Test.cc
	$(CMAKE_COMMAND) -E cmake_progress_report /home/schuli/projects/booos/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/Task_Test.dir/test/Task_Test.cc.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/Task_Test.dir/test/Task_Test.cc.o -c /home/schuli/projects/booos/test/Task_Test.cc

CMakeFiles/Task_Test.dir/test/Task_Test.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Task_Test.dir/test/Task_Test.cc.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/schuli/projects/booos/test/Task_Test.cc > CMakeFiles/Task_Test.dir/test/Task_Test.cc.i

CMakeFiles/Task_Test.dir/test/Task_Test.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Task_Test.dir/test/Task_Test.cc.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/schuli/projects/booos/test/Task_Test.cc -o CMakeFiles/Task_Test.dir/test/Task_Test.cc.s

CMakeFiles/Task_Test.dir/test/Task_Test.cc.o.requires:
.PHONY : CMakeFiles/Task_Test.dir/test/Task_Test.cc.o.requires

CMakeFiles/Task_Test.dir/test/Task_Test.cc.o.provides: CMakeFiles/Task_Test.dir/test/Task_Test.cc.o.requires
	$(MAKE) -f CMakeFiles/Task_Test.dir/build.make CMakeFiles/Task_Test.dir/test/Task_Test.cc.o.provides.build
.PHONY : CMakeFiles/Task_Test.dir/test/Task_Test.cc.o.provides

CMakeFiles/Task_Test.dir/test/Task_Test.cc.o.provides.build: CMakeFiles/Task_Test.dir/test/Task_Test.cc.o

CMakeFiles/Task_Test.dir/lib/BOOOS.cc.o: CMakeFiles/Task_Test.dir/flags.make
CMakeFiles/Task_Test.dir/lib/BOOOS.cc.o: ../lib/BOOOS.cc
	$(CMAKE_COMMAND) -E cmake_progress_report /home/schuli/projects/booos/build/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/Task_Test.dir/lib/BOOOS.cc.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/Task_Test.dir/lib/BOOOS.cc.o -c /home/schuli/projects/booos/lib/BOOOS.cc

CMakeFiles/Task_Test.dir/lib/BOOOS.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Task_Test.dir/lib/BOOOS.cc.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/schuli/projects/booos/lib/BOOOS.cc > CMakeFiles/Task_Test.dir/lib/BOOOS.cc.i

CMakeFiles/Task_Test.dir/lib/BOOOS.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Task_Test.dir/lib/BOOOS.cc.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/schuli/projects/booos/lib/BOOOS.cc -o CMakeFiles/Task_Test.dir/lib/BOOOS.cc.s

CMakeFiles/Task_Test.dir/lib/BOOOS.cc.o.requires:
.PHONY : CMakeFiles/Task_Test.dir/lib/BOOOS.cc.o.requires

CMakeFiles/Task_Test.dir/lib/BOOOS.cc.o.provides: CMakeFiles/Task_Test.dir/lib/BOOOS.cc.o.requires
	$(MAKE) -f CMakeFiles/Task_Test.dir/build.make CMakeFiles/Task_Test.dir/lib/BOOOS.cc.o.provides.build
.PHONY : CMakeFiles/Task_Test.dir/lib/BOOOS.cc.o.provides

CMakeFiles/Task_Test.dir/lib/BOOOS.cc.o.provides.build: CMakeFiles/Task_Test.dir/lib/BOOOS.cc.o

CMakeFiles/Task_Test.dir/lib/Queue.cc.o: CMakeFiles/Task_Test.dir/flags.make
CMakeFiles/Task_Test.dir/lib/Queue.cc.o: ../lib/Queue.cc
	$(CMAKE_COMMAND) -E cmake_progress_report /home/schuli/projects/booos/build/CMakeFiles $(CMAKE_PROGRESS_3)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/Task_Test.dir/lib/Queue.cc.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/Task_Test.dir/lib/Queue.cc.o -c /home/schuli/projects/booos/lib/Queue.cc

CMakeFiles/Task_Test.dir/lib/Queue.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Task_Test.dir/lib/Queue.cc.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/schuli/projects/booos/lib/Queue.cc > CMakeFiles/Task_Test.dir/lib/Queue.cc.i

CMakeFiles/Task_Test.dir/lib/Queue.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Task_Test.dir/lib/Queue.cc.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/schuli/projects/booos/lib/Queue.cc -o CMakeFiles/Task_Test.dir/lib/Queue.cc.s

CMakeFiles/Task_Test.dir/lib/Queue.cc.o.requires:
.PHONY : CMakeFiles/Task_Test.dir/lib/Queue.cc.o.requires

CMakeFiles/Task_Test.dir/lib/Queue.cc.o.provides: CMakeFiles/Task_Test.dir/lib/Queue.cc.o.requires
	$(MAKE) -f CMakeFiles/Task_Test.dir/build.make CMakeFiles/Task_Test.dir/lib/Queue.cc.o.provides.build
.PHONY : CMakeFiles/Task_Test.dir/lib/Queue.cc.o.provides

CMakeFiles/Task_Test.dir/lib/Queue.cc.o.provides.build: CMakeFiles/Task_Test.dir/lib/Queue.cc.o

CMakeFiles/Task_Test.dir/lib/Scheduler.cc.o: CMakeFiles/Task_Test.dir/flags.make
CMakeFiles/Task_Test.dir/lib/Scheduler.cc.o: ../lib/Scheduler.cc
	$(CMAKE_COMMAND) -E cmake_progress_report /home/schuli/projects/booos/build/CMakeFiles $(CMAKE_PROGRESS_4)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/Task_Test.dir/lib/Scheduler.cc.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/Task_Test.dir/lib/Scheduler.cc.o -c /home/schuli/projects/booos/lib/Scheduler.cc

CMakeFiles/Task_Test.dir/lib/Scheduler.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Task_Test.dir/lib/Scheduler.cc.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/schuli/projects/booos/lib/Scheduler.cc > CMakeFiles/Task_Test.dir/lib/Scheduler.cc.i

CMakeFiles/Task_Test.dir/lib/Scheduler.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Task_Test.dir/lib/Scheduler.cc.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/schuli/projects/booos/lib/Scheduler.cc -o CMakeFiles/Task_Test.dir/lib/Scheduler.cc.s

CMakeFiles/Task_Test.dir/lib/Scheduler.cc.o.requires:
.PHONY : CMakeFiles/Task_Test.dir/lib/Scheduler.cc.o.requires

CMakeFiles/Task_Test.dir/lib/Scheduler.cc.o.provides: CMakeFiles/Task_Test.dir/lib/Scheduler.cc.o.requires
	$(MAKE) -f CMakeFiles/Task_Test.dir/build.make CMakeFiles/Task_Test.dir/lib/Scheduler.cc.o.provides.build
.PHONY : CMakeFiles/Task_Test.dir/lib/Scheduler.cc.o.provides

CMakeFiles/Task_Test.dir/lib/Scheduler.cc.o.provides.build: CMakeFiles/Task_Test.dir/lib/Scheduler.cc.o

CMakeFiles/Task_Test.dir/lib/Task.cc.o: CMakeFiles/Task_Test.dir/flags.make
CMakeFiles/Task_Test.dir/lib/Task.cc.o: ../lib/Task.cc
	$(CMAKE_COMMAND) -E cmake_progress_report /home/schuli/projects/booos/build/CMakeFiles $(CMAKE_PROGRESS_5)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/Task_Test.dir/lib/Task.cc.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/Task_Test.dir/lib/Task.cc.o -c /home/schuli/projects/booos/lib/Task.cc

CMakeFiles/Task_Test.dir/lib/Task.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Task_Test.dir/lib/Task.cc.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/schuli/projects/booos/lib/Task.cc > CMakeFiles/Task_Test.dir/lib/Task.cc.i

CMakeFiles/Task_Test.dir/lib/Task.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Task_Test.dir/lib/Task.cc.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/schuli/projects/booos/lib/Task.cc -o CMakeFiles/Task_Test.dir/lib/Task.cc.s

CMakeFiles/Task_Test.dir/lib/Task.cc.o.requires:
.PHONY : CMakeFiles/Task_Test.dir/lib/Task.cc.o.requires

CMakeFiles/Task_Test.dir/lib/Task.cc.o.provides: CMakeFiles/Task_Test.dir/lib/Task.cc.o.requires
	$(MAKE) -f CMakeFiles/Task_Test.dir/build.make CMakeFiles/Task_Test.dir/lib/Task.cc.o.provides.build
.PHONY : CMakeFiles/Task_Test.dir/lib/Task.cc.o.provides

CMakeFiles/Task_Test.dir/lib/Task.cc.o.provides.build: CMakeFiles/Task_Test.dir/lib/Task.cc.o

# Object files for target Task_Test
Task_Test_OBJECTS = \
"CMakeFiles/Task_Test.dir/test/Task_Test.cc.o" \
"CMakeFiles/Task_Test.dir/lib/BOOOS.cc.o" \
"CMakeFiles/Task_Test.dir/lib/Queue.cc.o" \
"CMakeFiles/Task_Test.dir/lib/Scheduler.cc.o" \
"CMakeFiles/Task_Test.dir/lib/Task.cc.o"

# External object files for target Task_Test
Task_Test_EXTERNAL_OBJECTS =

Task_Test: CMakeFiles/Task_Test.dir/test/Task_Test.cc.o
Task_Test: CMakeFiles/Task_Test.dir/lib/BOOOS.cc.o
Task_Test: CMakeFiles/Task_Test.dir/lib/Queue.cc.o
Task_Test: CMakeFiles/Task_Test.dir/lib/Scheduler.cc.o
Task_Test: CMakeFiles/Task_Test.dir/lib/Task.cc.o
Task_Test: CMakeFiles/Task_Test.dir/build.make
Task_Test: CMakeFiles/Task_Test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable Task_Test"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Task_Test.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Task_Test.dir/build: Task_Test
.PHONY : CMakeFiles/Task_Test.dir/build

CMakeFiles/Task_Test.dir/requires: CMakeFiles/Task_Test.dir/test/Task_Test.cc.o.requires
CMakeFiles/Task_Test.dir/requires: CMakeFiles/Task_Test.dir/lib/BOOOS.cc.o.requires
CMakeFiles/Task_Test.dir/requires: CMakeFiles/Task_Test.dir/lib/Queue.cc.o.requires
CMakeFiles/Task_Test.dir/requires: CMakeFiles/Task_Test.dir/lib/Scheduler.cc.o.requires
CMakeFiles/Task_Test.dir/requires: CMakeFiles/Task_Test.dir/lib/Task.cc.o.requires
.PHONY : CMakeFiles/Task_Test.dir/requires

CMakeFiles/Task_Test.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Task_Test.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Task_Test.dir/clean

CMakeFiles/Task_Test.dir/depend:
	cd /home/schuli/projects/booos/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/schuli/projects/booos /home/schuli/projects/booos /home/schuli/projects/booos/build /home/schuli/projects/booos/build /home/schuli/projects/booos/build/CMakeFiles/Task_Test.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Task_Test.dir/depend

