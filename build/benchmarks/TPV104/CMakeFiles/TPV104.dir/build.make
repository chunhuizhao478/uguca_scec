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
include benchmarks/TPV104/CMakeFiles/TPV104.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include benchmarks/TPV104/CMakeFiles/TPV104.dir/compiler_depend.make

# Include the progress variables for this target.
include benchmarks/TPV104/CMakeFiles/TPV104.dir/progress.make

# Include the compile flags for this target's objects.
include benchmarks/TPV104/CMakeFiles/TPV104.dir/flags.make

benchmarks/TPV104/CMakeFiles/TPV104.dir/TPV104.cc.o: benchmarks/TPV104/CMakeFiles/TPV104.dir/flags.make
benchmarks/TPV104/CMakeFiles/TPV104.dir/TPV104.cc.o: /Users/andyz/Downloads/uguca/benchmarks/TPV104/TPV104.cc
benchmarks/TPV104/CMakeFiles/TPV104.dir/TPV104.cc.o: benchmarks/TPV104/CMakeFiles/TPV104.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/andyz/Downloads/uguca/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object benchmarks/TPV104/CMakeFiles/TPV104.dir/TPV104.cc.o"
	cd /Users/andyz/Downloads/uguca/build/benchmarks/TPV104 && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT benchmarks/TPV104/CMakeFiles/TPV104.dir/TPV104.cc.o -MF CMakeFiles/TPV104.dir/TPV104.cc.o.d -o CMakeFiles/TPV104.dir/TPV104.cc.o -c /Users/andyz/Downloads/uguca/benchmarks/TPV104/TPV104.cc

benchmarks/TPV104/CMakeFiles/TPV104.dir/TPV104.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/TPV104.dir/TPV104.cc.i"
	cd /Users/andyz/Downloads/uguca/build/benchmarks/TPV104 && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/andyz/Downloads/uguca/benchmarks/TPV104/TPV104.cc > CMakeFiles/TPV104.dir/TPV104.cc.i

benchmarks/TPV104/CMakeFiles/TPV104.dir/TPV104.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/TPV104.dir/TPV104.cc.s"
	cd /Users/andyz/Downloads/uguca/build/benchmarks/TPV104 && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/andyz/Downloads/uguca/benchmarks/TPV104/TPV104.cc -o CMakeFiles/TPV104.dir/TPV104.cc.s

# Object files for target TPV104
TPV104_OBJECTS = \
"CMakeFiles/TPV104.dir/TPV104.cc.o"

# External object files for target TPV104
TPV104_EXTERNAL_OBJECTS =

benchmarks/TPV104/TPV104: benchmarks/TPV104/CMakeFiles/TPV104.dir/TPV104.cc.o
benchmarks/TPV104/TPV104: benchmarks/TPV104/CMakeFiles/TPV104.dir/build.make
benchmarks/TPV104/TPV104: src/libuguca.dylib
benchmarks/TPV104/TPV104: /opt/homebrew/Cellar/open-mpi/4.1.5/lib/libmpi.dylib
benchmarks/TPV104/TPV104: /opt/homebrew/lib/libfftw3.dylib
benchmarks/TPV104/TPV104: /opt/homebrew/lib/libgsl.dylib
benchmarks/TPV104/TPV104: /opt/homebrew/lib/libgslcblas.dylib
benchmarks/TPV104/TPV104: benchmarks/TPV104/CMakeFiles/TPV104.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/Users/andyz/Downloads/uguca/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable TPV104"
	cd /Users/andyz/Downloads/uguca/build/benchmarks/TPV104 && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/TPV104.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
benchmarks/TPV104/CMakeFiles/TPV104.dir/build: benchmarks/TPV104/TPV104
.PHONY : benchmarks/TPV104/CMakeFiles/TPV104.dir/build

benchmarks/TPV104/CMakeFiles/TPV104.dir/clean:
	cd /Users/andyz/Downloads/uguca/build/benchmarks/TPV104 && $(CMAKE_COMMAND) -P CMakeFiles/TPV104.dir/cmake_clean.cmake
.PHONY : benchmarks/TPV104/CMakeFiles/TPV104.dir/clean

benchmarks/TPV104/CMakeFiles/TPV104.dir/depend:
	cd /Users/andyz/Downloads/uguca/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/andyz/Downloads/uguca /Users/andyz/Downloads/uguca/benchmarks/TPV104 /Users/andyz/Downloads/uguca/build /Users/andyz/Downloads/uguca/build/benchmarks/TPV104 /Users/andyz/Downloads/uguca/build/benchmarks/TPV104/CMakeFiles/TPV104.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : benchmarks/TPV104/CMakeFiles/TPV104.dir/depend
