# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.27

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

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /opt/homebrew/Cellar/cmake/3.27.5/bin/cmake

# The command to remove a file.
RM = /opt/homebrew/Cellar/cmake/3.27.5/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/andyz/Downloads/uguca

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/andyz/Downloads/uguca/build

# Include any dependencies generated for this target.
include test/CMakeFiles/test_rate_and_state_law.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include test/CMakeFiles/test_rate_and_state_law.dir/compiler_depend.make

# Include the progress variables for this target.
include test/CMakeFiles/test_rate_and_state_law.dir/progress.make

# Include the compile flags for this target's objects.
include test/CMakeFiles/test_rate_and_state_law.dir/flags.make

test/CMakeFiles/test_rate_and_state_law.dir/test_rate_and_state_law.cc.o: test/CMakeFiles/test_rate_and_state_law.dir/flags.make
test/CMakeFiles/test_rate_and_state_law.dir/test_rate_and_state_law.cc.o: /Users/andyz/Downloads/uguca/test/test_rate_and_state_law.cc
test/CMakeFiles/test_rate_and_state_law.dir/test_rate_and_state_law.cc.o: test/CMakeFiles/test_rate_and_state_law.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/andyz/Downloads/uguca/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object test/CMakeFiles/test_rate_and_state_law.dir/test_rate_and_state_law.cc.o"
	cd /Users/andyz/Downloads/uguca/build/test && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT test/CMakeFiles/test_rate_and_state_law.dir/test_rate_and_state_law.cc.o -MF CMakeFiles/test_rate_and_state_law.dir/test_rate_and_state_law.cc.o.d -o CMakeFiles/test_rate_and_state_law.dir/test_rate_and_state_law.cc.o -c /Users/andyz/Downloads/uguca/test/test_rate_and_state_law.cc

test/CMakeFiles/test_rate_and_state_law.dir/test_rate_and_state_law.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/test_rate_and_state_law.dir/test_rate_and_state_law.cc.i"
	cd /Users/andyz/Downloads/uguca/build/test && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/andyz/Downloads/uguca/test/test_rate_and_state_law.cc > CMakeFiles/test_rate_and_state_law.dir/test_rate_and_state_law.cc.i

test/CMakeFiles/test_rate_and_state_law.dir/test_rate_and_state_law.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/test_rate_and_state_law.dir/test_rate_and_state_law.cc.s"
	cd /Users/andyz/Downloads/uguca/build/test && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/andyz/Downloads/uguca/test/test_rate_and_state_law.cc -o CMakeFiles/test_rate_and_state_law.dir/test_rate_and_state_law.cc.s

# Object files for target test_rate_and_state_law
test_rate_and_state_law_OBJECTS = \
"CMakeFiles/test_rate_and_state_law.dir/test_rate_and_state_law.cc.o"

# External object files for target test_rate_and_state_law
test_rate_and_state_law_EXTERNAL_OBJECTS =

test/test_rate_and_state_law: test/CMakeFiles/test_rate_and_state_law.dir/test_rate_and_state_law.cc.o
test/test_rate_and_state_law: test/CMakeFiles/test_rate_and_state_law.dir/build.make
test/test_rate_and_state_law: src/libuguca.dylib
test/test_rate_and_state_law: /opt/homebrew/Cellar/open-mpi/4.1.5/lib/libmpi.dylib
test/test_rate_and_state_law: /opt/homebrew/lib/libfftw3.dylib
test/test_rate_and_state_law: /opt/homebrew/lib/libgsl.dylib
test/test_rate_and_state_law: /opt/homebrew/lib/libgslcblas.dylib
test/test_rate_and_state_law: test/CMakeFiles/test_rate_and_state_law.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/Users/andyz/Downloads/uguca/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable test_rate_and_state_law"
	cd /Users/andyz/Downloads/uguca/build/test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/test_rate_and_state_law.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test/CMakeFiles/test_rate_and_state_law.dir/build: test/test_rate_and_state_law
.PHONY : test/CMakeFiles/test_rate_and_state_law.dir/build

test/CMakeFiles/test_rate_and_state_law.dir/clean:
	cd /Users/andyz/Downloads/uguca/build/test && $(CMAKE_COMMAND) -P CMakeFiles/test_rate_and_state_law.dir/cmake_clean.cmake
.PHONY : test/CMakeFiles/test_rate_and_state_law.dir/clean

test/CMakeFiles/test_rate_and_state_law.dir/depend:
	cd /Users/andyz/Downloads/uguca/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/andyz/Downloads/uguca /Users/andyz/Downloads/uguca/test /Users/andyz/Downloads/uguca/build /Users/andyz/Downloads/uguca/build/test /Users/andyz/Downloads/uguca/build/test/CMakeFiles/test_rate_and_state_law.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : test/CMakeFiles/test_rate_and_state_law.dir/depend
