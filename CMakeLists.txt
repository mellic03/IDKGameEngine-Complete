cmake_minimum_required(VERSION 3.9)
project(IDKGameEngine-Complete)


set(CMAKE_BUILD_PARALLEL_LEVEL 8)
set(CMAKE_CXX_FLAGS "-std=c++17 -Wuninitialized -Winit-self -Wmaybe-uninitialized -Werror -fsanitize=undefined -fdiagnostics-color=always -lstdc++fs")
add_compile_options("-g" "-fPIC" "-fno-ident" "-fno-asynchronous-unwind-tables")
add_definitions(-DIDK_DEBUG)


set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${CMAKE_SOURCE_DIR}/build/output/IDKGE/runtime/)
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_SOURCE_DIR}/build/output/)


include_directories(${CMAKE_SOURCE_DIR}/libidk/src/)
include_directories(${CMAKE_SOURCE_DIR}/IDKGameEngine/src/)


add_subdirectory(${CMAKE_SOURCE_DIR}/libidk/)
add_subdirectory(${CMAKE_SOURCE_DIR}/IDKGameEngine/)
add_subdirectory(${CMAKE_SOURCE_DIR}/IDKGame/)
add_subdirectory(${CMAKE_SOURCE_DIR}/IDKGameLoader/)

