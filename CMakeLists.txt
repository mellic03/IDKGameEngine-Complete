cmake_minimum_required(VERSION 3.9)
project(IDKGameEngine-Complete)


set(CMAKE_BUILD_PARALLEL_LEVEL 8)
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${CMAKE_SOURCE_DIR}/build/lib/)
set(CMAKE_INSTALL_MESSAGE LAZY)

set(CMAKE_CXX_FLAGS "-fdiagnostics-color=always")
# set(CMAKE_CXX_FLAGS "-std=c++17 -Wuninitialized -Winit-self -Wmaybe-uninitialized -Werror -fsanitize=undefined -fdiagnostics-color=always -lstdc++fs")
# add_compile_options("-O3" "-fPIC" "-fno-ident" "-fno-asynchronous-unwind-tables")


if (USE_IDK_DEBUG)
    message("Debug build")
    add_definitions(-DIDK_DEBUG)
    set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_SOURCE_DIR}/build/debug/)

else()
    message("Release build")
    set(CMAKE_RUNTIME_OUTPUT_DIRECTORY${CMAKE_SOURCE_DIR}/build/release/)

endif ()



include_directories(${CMAKE_SOURCE_DIR}/libidk/src/)
include_directories(${CMAKE_SOURCE_DIR}/IDKGraphics/src/)
include_directories(${CMAKE_SOURCE_DIR}/IDKGameEngine/src/)


add_subdirectory(${CMAKE_SOURCE_DIR}/libidk/)
add_subdirectory(${CMAKE_SOURCE_DIR}/IDKGraphics/)
add_subdirectory(${CMAKE_SOURCE_DIR}/IDKGameEngine/)
add_subdirectory(${CMAKE_SOURCE_DIR}/IDKGame/)
add_subdirectory(${CMAKE_SOURCE_DIR}/IDKGameLoader/)
add_subdirectory(${CMAKE_SOURCE_DIR}/IDKtools/)



