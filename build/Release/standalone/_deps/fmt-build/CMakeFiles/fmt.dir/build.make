# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.23

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "/home/matozinho/Documentos/EAD 2021/OAC/matrix-mul-cache/matrix-cache/standalone"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "/home/matozinho/Documentos/EAD 2021/OAC/matrix-mul-cache/matrix-cache/build/Release/standalone"

# Include any dependencies generated for this target.
include _deps/fmt-build/CMakeFiles/fmt.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include _deps/fmt-build/CMakeFiles/fmt.dir/compiler_depend.make

# Include the progress variables for this target.
include _deps/fmt-build/CMakeFiles/fmt.dir/progress.make

# Include the compile flags for this target's objects.
include _deps/fmt-build/CMakeFiles/fmt.dir/flags.make

_deps/fmt-build/CMakeFiles/fmt.dir/src/format.cc.o: _deps/fmt-build/CMakeFiles/fmt.dir/flags.make
_deps/fmt-build/CMakeFiles/fmt.dir/src/format.cc.o: /home/matozinho/.cache/CPM/fmt/15c05aa781ab44fa13a906fe5737c1d14e5edee9/src/format.cc
_deps/fmt-build/CMakeFiles/fmt.dir/src/format.cc.o: _deps/fmt-build/CMakeFiles/fmt.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/home/matozinho/Documentos/EAD 2021/OAC/matrix-mul-cache/matrix-cache/build/Release/standalone/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object _deps/fmt-build/CMakeFiles/fmt.dir/src/format.cc.o"
	cd "/home/matozinho/Documentos/EAD 2021/OAC/matrix-mul-cache/matrix-cache/build/Release/standalone/_deps/fmt-build" && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT _deps/fmt-build/CMakeFiles/fmt.dir/src/format.cc.o -MF CMakeFiles/fmt.dir/src/format.cc.o.d -o CMakeFiles/fmt.dir/src/format.cc.o -c /home/matozinho/.cache/CPM/fmt/15c05aa781ab44fa13a906fe5737c1d14e5edee9/src/format.cc

_deps/fmt-build/CMakeFiles/fmt.dir/src/format.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/fmt.dir/src/format.cc.i"
	cd "/home/matozinho/Documentos/EAD 2021/OAC/matrix-mul-cache/matrix-cache/build/Release/standalone/_deps/fmt-build" && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/matozinho/.cache/CPM/fmt/15c05aa781ab44fa13a906fe5737c1d14e5edee9/src/format.cc > CMakeFiles/fmt.dir/src/format.cc.i

_deps/fmt-build/CMakeFiles/fmt.dir/src/format.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/fmt.dir/src/format.cc.s"
	cd "/home/matozinho/Documentos/EAD 2021/OAC/matrix-mul-cache/matrix-cache/build/Release/standalone/_deps/fmt-build" && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/matozinho/.cache/CPM/fmt/15c05aa781ab44fa13a906fe5737c1d14e5edee9/src/format.cc -o CMakeFiles/fmt.dir/src/format.cc.s

_deps/fmt-build/CMakeFiles/fmt.dir/src/os.cc.o: _deps/fmt-build/CMakeFiles/fmt.dir/flags.make
_deps/fmt-build/CMakeFiles/fmt.dir/src/os.cc.o: /home/matozinho/.cache/CPM/fmt/15c05aa781ab44fa13a906fe5737c1d14e5edee9/src/os.cc
_deps/fmt-build/CMakeFiles/fmt.dir/src/os.cc.o: _deps/fmt-build/CMakeFiles/fmt.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/home/matozinho/Documentos/EAD 2021/OAC/matrix-mul-cache/matrix-cache/build/Release/standalone/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object _deps/fmt-build/CMakeFiles/fmt.dir/src/os.cc.o"
	cd "/home/matozinho/Documentos/EAD 2021/OAC/matrix-mul-cache/matrix-cache/build/Release/standalone/_deps/fmt-build" && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT _deps/fmt-build/CMakeFiles/fmt.dir/src/os.cc.o -MF CMakeFiles/fmt.dir/src/os.cc.o.d -o CMakeFiles/fmt.dir/src/os.cc.o -c /home/matozinho/.cache/CPM/fmt/15c05aa781ab44fa13a906fe5737c1d14e5edee9/src/os.cc

_deps/fmt-build/CMakeFiles/fmt.dir/src/os.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/fmt.dir/src/os.cc.i"
	cd "/home/matozinho/Documentos/EAD 2021/OAC/matrix-mul-cache/matrix-cache/build/Release/standalone/_deps/fmt-build" && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/matozinho/.cache/CPM/fmt/15c05aa781ab44fa13a906fe5737c1d14e5edee9/src/os.cc > CMakeFiles/fmt.dir/src/os.cc.i

_deps/fmt-build/CMakeFiles/fmt.dir/src/os.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/fmt.dir/src/os.cc.s"
	cd "/home/matozinho/Documentos/EAD 2021/OAC/matrix-mul-cache/matrix-cache/build/Release/standalone/_deps/fmt-build" && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/matozinho/.cache/CPM/fmt/15c05aa781ab44fa13a906fe5737c1d14e5edee9/src/os.cc -o CMakeFiles/fmt.dir/src/os.cc.s

# Object files for target fmt
fmt_OBJECTS = \
"CMakeFiles/fmt.dir/src/format.cc.o" \
"CMakeFiles/fmt.dir/src/os.cc.o"

# External object files for target fmt
fmt_EXTERNAL_OBJECTS =

_deps/fmt-build/libfmt.a: _deps/fmt-build/CMakeFiles/fmt.dir/src/format.cc.o
_deps/fmt-build/libfmt.a: _deps/fmt-build/CMakeFiles/fmt.dir/src/os.cc.o
_deps/fmt-build/libfmt.a: _deps/fmt-build/CMakeFiles/fmt.dir/build.make
_deps/fmt-build/libfmt.a: _deps/fmt-build/CMakeFiles/fmt.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/home/matozinho/Documentos/EAD 2021/OAC/matrix-mul-cache/matrix-cache/build/Release/standalone/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX static library libfmt.a"
	cd "/home/matozinho/Documentos/EAD 2021/OAC/matrix-mul-cache/matrix-cache/build/Release/standalone/_deps/fmt-build" && $(CMAKE_COMMAND) -P CMakeFiles/fmt.dir/cmake_clean_target.cmake
	cd "/home/matozinho/Documentos/EAD 2021/OAC/matrix-mul-cache/matrix-cache/build/Release/standalone/_deps/fmt-build" && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/fmt.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
_deps/fmt-build/CMakeFiles/fmt.dir/build: _deps/fmt-build/libfmt.a
.PHONY : _deps/fmt-build/CMakeFiles/fmt.dir/build

_deps/fmt-build/CMakeFiles/fmt.dir/clean:
	cd "/home/matozinho/Documentos/EAD 2021/OAC/matrix-mul-cache/matrix-cache/build/Release/standalone/_deps/fmt-build" && $(CMAKE_COMMAND) -P CMakeFiles/fmt.dir/cmake_clean.cmake
.PHONY : _deps/fmt-build/CMakeFiles/fmt.dir/clean

_deps/fmt-build/CMakeFiles/fmt.dir/depend:
	cd "/home/matozinho/Documentos/EAD 2021/OAC/matrix-mul-cache/matrix-cache/build/Release/standalone" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/home/matozinho/Documentos/EAD 2021/OAC/matrix-mul-cache/matrix-cache/standalone" /home/matozinho/.cache/CPM/fmt/15c05aa781ab44fa13a906fe5737c1d14e5edee9 "/home/matozinho/Documentos/EAD 2021/OAC/matrix-mul-cache/matrix-cache/build/Release/standalone" "/home/matozinho/Documentos/EAD 2021/OAC/matrix-mul-cache/matrix-cache/build/Release/standalone/_deps/fmt-build" "/home/matozinho/Documentos/EAD 2021/OAC/matrix-mul-cache/matrix-cache/build/Release/standalone/_deps/fmt-build/CMakeFiles/fmt.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : _deps/fmt-build/CMakeFiles/fmt.dir/depend

