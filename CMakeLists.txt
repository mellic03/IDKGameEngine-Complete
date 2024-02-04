cmake_minimum_required(VERSION 3.9)
project(IDKGameEngine-Complete)

cmake_policy(SET CMP0048 NEW)

set(CMAKE_BUILD_PARALLEL_LEVEL 24)
set(CMAKE_INSTALL_MESSAGE LAZY)

set(CMAKE_CXX_STANDARD 23)
set(CMAKE_COLOR_DIAGNOSTICS ON)



# set(CMAKE_CXX_FLAGS "-std=c++17 -Wuninitialized -Winit-self -Wmaybe-uninitialized -Werror -fsanitize=undefined -fdiagnostics-color=always -lstdc++fs")
# add_compile_options("-O3" "-fPIC" "-fno-ident" "-fno-asynchronous-unwind-tables")
add_compile_options("-std=c++23")

if(MSVC)
else()
    add_compile_options(
        # -Wextra
        # -Wpedantic
        # -Werror
        # -Wuninitialized -Wmaybe-uninitialized
        # -Winit-self
        # -fsanitize=undefined -fno-sanitize=vptr -lstdc++fs
    )
endif()




string(ASCII 27 Esc)
set(Green "${Esc}[32m")

if (IDK_DEBUG)
    message("${Green}------ Debug build ------")
    add_definitions(-DIDK_DEBUG)
    set(IDK_OUTPUT_DIRECTORY ${CMAKE_SOURCE_DIR}/build/debug/)
    set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_SOURCE_DIR}/build/debug/)
    set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${CMAKE_SOURCE_DIR}/build/lib/debug/)
    add_compile_options("-g" "-O0")

else()
    message("${Green}------ Release build ------")
    set(IDK_OUTPUT_DIRECTORY ${CMAKE_SOURCE_DIR}/build/release/)
    set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_SOURCE_DIR}/build/release/)
    set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${CMAKE_SOURCE_DIR}/build/lib/release/)
    add_compile_options("-O3")


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



# FILE(
#     COPY ${CMAKE_CURRENT_SOURCE_DIR}/build/lib/
#     DESTINATION ${CMAKE_CURRENT_SOURCE_DIR}/build/debug/IDKGE/runtime/
# )


# add_custom_target(
#     CopyFilesTarget ALL
#     COMMAND ${CMAKE_COMMAND} -E copy_directory ${CMAKE_SOURCE_DIR}/build/lib/ ${CMAKE_SOURCE_DIR}/build/debug/IDKGE/runtime/
#     DEPENDS ${PROJECT_NAME}
# )

# add_dependencies(IDKGameEngine CopyFilesTarget)

