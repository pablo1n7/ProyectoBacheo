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
CMAKE_SOURCE_DIR = /home/rodrigo/aplicacionesWeb/ProyectoBacheo/pclPipeLine/main

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/rodrigo/aplicacionesWeb/ProyectoBacheo/pclPipeLine/main

# Include any dependencies generated for this target.
include segmentacion/filtrado/CMakeFiles/filtradoNube.dir/depend.make

# Include the progress variables for this target.
include segmentacion/filtrado/CMakeFiles/filtradoNube.dir/progress.make

# Include the compile flags for this target's objects.
include segmentacion/filtrado/CMakeFiles/filtradoNube.dir/flags.make

segmentacion/filtrado/CMakeFiles/filtradoNube.dir/FiltroNube.cpp.o: segmentacion/filtrado/CMakeFiles/filtradoNube.dir/flags.make
segmentacion/filtrado/CMakeFiles/filtradoNube.dir/FiltroNube.cpp.o: segmentacion/filtrado/FiltroNube.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/rodrigo/aplicacionesWeb/ProyectoBacheo/pclPipeLine/main/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object segmentacion/filtrado/CMakeFiles/filtradoNube.dir/FiltroNube.cpp.o"
	cd /home/rodrigo/aplicacionesWeb/ProyectoBacheo/pclPipeLine/main/segmentacion/filtrado && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/filtradoNube.dir/FiltroNube.cpp.o -c /home/rodrigo/aplicacionesWeb/ProyectoBacheo/pclPipeLine/main/segmentacion/filtrado/FiltroNube.cpp

segmentacion/filtrado/CMakeFiles/filtradoNube.dir/FiltroNube.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/filtradoNube.dir/FiltroNube.cpp.i"
	cd /home/rodrigo/aplicacionesWeb/ProyectoBacheo/pclPipeLine/main/segmentacion/filtrado && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/rodrigo/aplicacionesWeb/ProyectoBacheo/pclPipeLine/main/segmentacion/filtrado/FiltroNube.cpp > CMakeFiles/filtradoNube.dir/FiltroNube.cpp.i

segmentacion/filtrado/CMakeFiles/filtradoNube.dir/FiltroNube.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/filtradoNube.dir/FiltroNube.cpp.s"
	cd /home/rodrigo/aplicacionesWeb/ProyectoBacheo/pclPipeLine/main/segmentacion/filtrado && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/rodrigo/aplicacionesWeb/ProyectoBacheo/pclPipeLine/main/segmentacion/filtrado/FiltroNube.cpp -o CMakeFiles/filtradoNube.dir/FiltroNube.cpp.s

segmentacion/filtrado/CMakeFiles/filtradoNube.dir/FiltroNube.cpp.o.requires:
.PHONY : segmentacion/filtrado/CMakeFiles/filtradoNube.dir/FiltroNube.cpp.o.requires

segmentacion/filtrado/CMakeFiles/filtradoNube.dir/FiltroNube.cpp.o.provides: segmentacion/filtrado/CMakeFiles/filtradoNube.dir/FiltroNube.cpp.o.requires
	$(MAKE) -f segmentacion/filtrado/CMakeFiles/filtradoNube.dir/build.make segmentacion/filtrado/CMakeFiles/filtradoNube.dir/FiltroNube.cpp.o.provides.build
.PHONY : segmentacion/filtrado/CMakeFiles/filtradoNube.dir/FiltroNube.cpp.o.provides

segmentacion/filtrado/CMakeFiles/filtradoNube.dir/FiltroNube.cpp.o.provides.build: segmentacion/filtrado/CMakeFiles/filtradoNube.dir/FiltroNube.cpp.o

# Object files for target filtradoNube
filtradoNube_OBJECTS = \
"CMakeFiles/filtradoNube.dir/FiltroNube.cpp.o"

# External object files for target filtradoNube
filtradoNube_EXTERNAL_OBJECTS =

segmentacion/filtrado/libfiltradoNube.a: segmentacion/filtrado/CMakeFiles/filtradoNube.dir/FiltroNube.cpp.o
segmentacion/filtrado/libfiltradoNube.a: segmentacion/filtrado/CMakeFiles/filtradoNube.dir/build.make
segmentacion/filtrado/libfiltradoNube.a: segmentacion/filtrado/CMakeFiles/filtradoNube.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX static library libfiltradoNube.a"
	cd /home/rodrigo/aplicacionesWeb/ProyectoBacheo/pclPipeLine/main/segmentacion/filtrado && $(CMAKE_COMMAND) -P CMakeFiles/filtradoNube.dir/cmake_clean_target.cmake
	cd /home/rodrigo/aplicacionesWeb/ProyectoBacheo/pclPipeLine/main/segmentacion/filtrado && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/filtradoNube.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
segmentacion/filtrado/CMakeFiles/filtradoNube.dir/build: segmentacion/filtrado/libfiltradoNube.a
.PHONY : segmentacion/filtrado/CMakeFiles/filtradoNube.dir/build

segmentacion/filtrado/CMakeFiles/filtradoNube.dir/requires: segmentacion/filtrado/CMakeFiles/filtradoNube.dir/FiltroNube.cpp.o.requires
.PHONY : segmentacion/filtrado/CMakeFiles/filtradoNube.dir/requires

segmentacion/filtrado/CMakeFiles/filtradoNube.dir/clean:
	cd /home/rodrigo/aplicacionesWeb/ProyectoBacheo/pclPipeLine/main/segmentacion/filtrado && $(CMAKE_COMMAND) -P CMakeFiles/filtradoNube.dir/cmake_clean.cmake
.PHONY : segmentacion/filtrado/CMakeFiles/filtradoNube.dir/clean

segmentacion/filtrado/CMakeFiles/filtradoNube.dir/depend:
	cd /home/rodrigo/aplicacionesWeb/ProyectoBacheo/pclPipeLine/main && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/rodrigo/aplicacionesWeb/ProyectoBacheo/pclPipeLine/main /home/rodrigo/aplicacionesWeb/ProyectoBacheo/pclPipeLine/main/segmentacion/filtrado /home/rodrigo/aplicacionesWeb/ProyectoBacheo/pclPipeLine/main /home/rodrigo/aplicacionesWeb/ProyectoBacheo/pclPipeLine/main/segmentacion/filtrado /home/rodrigo/aplicacionesWeb/ProyectoBacheo/pclPipeLine/main/segmentacion/filtrado/CMakeFiles/filtradoNube.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : segmentacion/filtrado/CMakeFiles/filtradoNube.dir/depend
