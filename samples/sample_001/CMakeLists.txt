cmake_minimum_required(VERSION 2.8)

set(PROJECT_NAME gcl-sample_001)
project(${PROJECT_NAME})
set(CMAKE_BUILD_TYPE Release)

find_package(gcl REQUIRED)
include_directories(${gcl_INCLUDE_DIRS})

# Project sources
set(PROJECT_SRCS
main.cpp
)

# Create shared library
add_executable(${PROJECT_NAME} ${PROJECT_SRCS})
target_link_libraries(${PROJECT_NAME} ${gcl_LIBRARIES})
install(TARGETS ${PROJECT_NAME} DESTINATION bin/${PROJECT_NAME})
