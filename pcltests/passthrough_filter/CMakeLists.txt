cmake_minimum_required(VERSION 2.8 FATAL_ERROR)

project(passthrough_filter)

find_package(PCL 1.2 REQUIRED)

include_directories(${PCL_INCLUDE_DIRS})
link_directories(${PCL_LIBRARY_DIRS})
add_definitions(${PCL_DEFINITIONS})

add_executable (passthrough_filter passthrough_filter.cpp)
target_link_libraries (passthrough_filter ${PCL_LIBRARIES})