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
include test/CMakeFiles/test_defrig_interface.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include test/CMakeFiles/test_defrig_interface.dir/compiler_depend.make

# Include the progress variables for this target.
include test/CMakeFiles/test_defrig_interface.dir/progress.make

# Include the compile flags for this target's objects.
include test/CMakeFiles/test_defrig_interface.dir/flags.make

test/CMakeFiles/test_defrig_interface.dir/test_defrig_interface.cc.o: test/CMakeFiles/test_defrig_interface.dir/flags.make
test/CMakeFiles/test_defrig_interface.dir/test_defrig_interface.cc.o: /Users/andyz/Downloads/uguca/test/test_defrig_interface.cc
test/CMakeFiles/test_defrig_interface.dir/test_defrig_interface.cc.o: test/CMakeFiles/test_defrig_interface.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/andyz/Downloads/uguca/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object test/CMakeFiles/test_defrig_interface.dir/test_defrig_interface.cc.o"
	cd /Users/andyz/Downloads/uguca/build/test && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT test/CMakeFiles/test_defrig_interface.dir/test_defrig_interface.cc.o -MF CMakeFiles/test_defrig_interface.dir/test_defrig_interface.cc.o.d -o CMakeFiles/test_defrig_interface.dir/test_defrig_interface.cc.o -c /Users/andyz/Downloads/uguca/test/test_defrig_interface.cc

test/CMakeFiles/test_defrig_interface.dir/test_defrig_interface.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/test_defrig_interface.dir/test_defrig_interface.cc.i"
	cd /Users/andyz/Downloads/uguca/build/test && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/andyz/Downloads/uguca/test/test_defrig_interface.cc > CMakeFiles/test_defrig_interface.dir/test_defrig_interface.cc.i

test/CMakeFiles/test_defrig_interface.dir/test_defrig_interface.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/test_defrig_interface.dir/test_defrig_interface.cc.s"
	cd /Users/andyz/Downloads/uguca/build/test && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/andyz/Downloads/uguca/test/test_defrig_interface.cc -o CMakeFiles/test_defrig_interface.dir/test_defrig_interface.cc.s

# Object files for target test_defrig_interface
test_defrig_interface_OBJECTS = \
"CMakeFiles/test_defrig_interface.dir/test_defrig_interface.cc.o"

# External object files for target test_defrig_interface
test_defrig_interface_EXTERNAL_OBJECTS =

test/test_defrig_interface: test/CMakeFiles/test_defrig_interface.dir/test_defrig_interface.cc.o
test/test_defrig_interface: test/CMakeFiles/test_defrig_interface.dir/build.make
test/test_defrig_interface: src/libuguca.dylib
test/test_defrig_interface: /opt/homebrew/Cellar/open-mpi/4.1.5/lib/libmpi.dylib
test/test_defrig_interface: /opt/homebrew/lib/libfftw3.dylib
test/test_defrig_interface: /opt/homebrew/lib/libgsl.dylib
test/test_defrig_interface: /opt/homebrew/lib/libgslcblas.dylib
test/test_defrig_interface: test/CMakeFiles/test_defrig_interface.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/Users/andyz/Downloads/uguca/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable test_defrig_interface"
	cd /Users/andyz/Downloads/uguca/build/test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/test_defrig_interface.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test/CMakeFiles/test_defrig_interface.dir/build: test/test_defrig_interface
.PHONY : test/CMakeFiles/test_defrig_interface.dir/build

test/CMakeFiles/test_defrig_interface.dir/clean:
	cd /Users/andyz/Downloads/uguca/build/test && $(CMAKE_COMMAND) -P CMakeFiles/test_defrig_interface.dir/cmake_clean.cmake
.PHONY : test/CMakeFiles/test_defrig_interface.dir/clean

test/CMakeFiles/test_defrig_interface.dir/depend:
	cd /Users/andyz/Downloads/uguca/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/andyz/Downloads/uguca /Users/andyz/Downloads/uguca/test /Users/andyz/Downloads/uguca/build /Users/andyz/Downloads/uguca/build/test /Users/andyz/Downloads/uguca/build/test/CMakeFiles/test_defrig_interface.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : test/CMakeFiles/test_defrig_interface.dir/depend

