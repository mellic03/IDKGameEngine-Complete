cmake_minimum_required(VERSION 3.9)
project(game)


file(GLOB SOURCES
    "src/*.cpp"
)

add_library(${PROJECT_NAME} SHARED ${SOURCES})

target_include_directories(
    ${PROJECT_NAME} PUBLIC
    ${CMAKE_CURRENT_SOURCE_DIR}/external/include/
)

set_target_properties(
    ${PROJECT_NAME} PROPERTIES
    POSITION_INDEPENDENT_CODE ON
    CXX_STANDARD 17
)


target_link_libraries(
    ${PROJECT_NAME} PUBLIC
)

