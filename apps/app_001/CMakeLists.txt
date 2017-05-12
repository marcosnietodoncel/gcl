cmake_minimum_required(VERSION 2.8)

set(PROJECT_NAME gcl-app_001)
project(${PROJECT_NAME})
set(CMAKE_BUILD_TYPE Release)

find_package(GCL REQUIRED)
message( GCL_INCLUDE_DIRS : ${GCL_INCLUDE_DIRS} )
message( GCL_LIBRARIES : ${GCL_LIBRARIES} )
include_directories(${GCL_INCLUDE_DIRS})

# Project sources
set(PROJECT_SRCS
main.cpp
)

# Create shared library
link_directories(${GCL_LIBRARY_DIR})
add_executable(${PROJECT_NAME} ${PROJECT_SRCS})
target_link_libraries(${PROJECT_NAME} ${GCL_LIBRARIES})
install(TARGETS ${PROJECT_NAME} DESTINATION bin/${PROJECT_NAME})
