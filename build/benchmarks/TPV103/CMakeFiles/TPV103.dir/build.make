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
include benchmarks/TPV103/CMakeFiles/TPV103.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include benchmarks/TPV103/CMakeFiles/TPV103.dir/compiler_depend.make

# Include the progress variables for this target.
include benchmarks/TPV103/CMakeFiles/TPV103.dir/progress.make

# Include the compile flags for this target's objects.
include benchmarks/TPV103/CMakeFiles/TPV103.dir/flags.make

benchmarks/TPV103/CMakeFiles/TPV103.dir/TPV103.cc.o: benchmarks/TPV103/CMakeFiles/TPV103.dir/flags.make
benchmarks/TPV103/CMakeFiles/TPV103.dir/TPV103.cc.o: /Users/andyz/Downloads/uguca/benchmarks/TPV103/TPV103.cc
benchmarks/TPV103/CMakeFiles/TPV103.dir/TPV103.cc.o: benchmarks/TPV103/CMakeFiles/TPV103.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/andyz/Downloads/uguca/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object benchmarks/TPV103/CMakeFiles/TPV103.dir/TPV103.cc.o"
	cd /Users/andyz/Downloads/uguca/build/benchmarks/TPV103 && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT benchmarks/TPV103/CMakeFiles/TPV103.dir/TPV103.cc.o -MF CMakeFiles/TPV103.dir/TPV103.cc.o.d -o CMakeFiles/TPV103.dir/TPV103.cc.o -c /Users/andyz/Downloads/uguca/benchmarks/TPV103/TPV103.cc

benchmarks/TPV103/CMakeFiles/TPV103.dir/TPV103.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/TPV103.dir/TPV103.cc.i"
	cd /Users/andyz/Downloads/uguca/build/benchmarks/TPV103 && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/andyz/Downloads/uguca/benchmarks/TPV103/TPV103.cc > CMakeFiles/TPV103.dir/TPV103.cc.i

benchmarks/TPV103/CMakeFiles/TPV103.dir/TPV103.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/TPV103.dir/TPV103.cc.s"
	cd /Users/andyz/Downloads/uguca/build/benchmarks/TPV103 && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/andyz/Downloads/uguca/benchmarks/TPV103/TPV103.cc -o CMakeFiles/TPV103.dir/TPV103.cc.s

# Object files for target TPV103
TPV103_OBJECTS = \
"CMakeFiles/TPV103.dir/TPV103.cc.o"

# External object files for target TPV103
TPV103_EXTERNAL_OBJECTS =

benchmarks/TPV103/TPV103: benchmarks/TPV103/CMakeFiles/TPV103.dir/TPV103.cc.o
benchmarks/TPV103/TPV103: benchmarks/TPV103/CMakeFiles/TPV103.dir/build.make
benchmarks/TPV103/TPV103: src/libuguca.dylib
benchmarks/TPV103/TPV103: /opt/homebrew/Cellar/open-mpi/4.1.5/lib/libmpi.dylib
benchmarks/TPV103/TPV103: /opt/homebrew/lib/libfftw3.dylib
benchmarks/TPV103/TPV103: /opt/homebrew/lib/libgsl.dylib
benchmarks/TPV103/TPV103: /opt/homebrew/lib/libgslcblas.dylib
benchmarks/TPV103/TPV103: benchmarks/TPV103/CMakeFiles/TPV103.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/Users/andyz/Downloads/uguca/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable TPV103"
	cd /Users/andyz/Downloads/uguca/build/benchmarks/TPV103 && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/TPV103.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
benchmarks/TPV103/CMakeFiles/TPV103.dir/build: benchmarks/TPV103/TPV103
.PHONY : benchmarks/TPV103/CMakeFiles/TPV103.dir/build

benchmarks/TPV103/CMakeFiles/TPV103.dir/clean:
	cd /Users/andyz/Downloads/uguca/build/benchmarks/TPV103 && $(CMAKE_COMMAND) -P CMakeFiles/TPV103.dir/cmake_clean.cmake
.PHONY : benchmarks/TPV103/CMakeFiles/TPV103.dir/clean

benchmarks/TPV103/CMakeFiles/TPV103.dir/depend:
	cd /Users/andyz/Downloads/uguca/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/andyz/Downloads/uguca /Users/andyz/Downloads/uguca/benchmarks/TPV103 /Users/andyz/Downloads/uguca/build /Users/andyz/Downloads/uguca/build/benchmarks/TPV103 /Users/andyz/Downloads/uguca/build/benchmarks/TPV103/CMakeFiles/TPV103.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : benchmarks/TPV103/CMakeFiles/TPV103.dir/depend
