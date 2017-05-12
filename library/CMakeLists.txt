cmake_minimum_required(VERSION 3.1)
project( GCL )
set(MAIN_LIBRARY_NAME ${PROJECT_NAME})

set_property(GLOBAL PROPERTY USE_FOLDERS ON) # to organize in folders

set(MAIN_PROJECT_BUILD_PATH ${PROJECT_BINARY_DIR})

# Version
set(GCL_MAJOR_VERSION 1)
set(GCL_MINOR_VERSION 0)
message(GCL_MAJOR_VERSION: ${GCL_MAJOR_VERSION})
message(GCL_MINOR_VERSION: ${GCL_MINOR_VERSION})

# Options
option( ADD_GCL_CORE "Add GCL core" ON)
option( BUILD_SAMPLES "Build samples" ON)

# Add subdirectories
add_subdirectory(modules)
if(BUILD_SAMPLES)
add_subdirectory(samples)
endif(BUILD_SAMPLES)

# Configure template
message(CMAKE_INSTALL_PREFIX : ${CMAKE_INSTALL_PREFIX})
configure_file("${CMAKE_CURRENT_SOURCE_DIR}/${MAIN_LIBRARY_NAME}.cmake.in" "${PROJECT_BINARY_DIR}/${MAIN_LIBRARY_NAME}Config.cmake" @ONLY)

# Install <package>Config.cmake, so this library can be found via find_package
# Prepending:
# Unix: /usr/local
# Windows 64b: C:\Program Files\${PROJECT_NAME}
install(FILES ${PROJECT_BINARY_DIR}/${PROJECT_NAME}Config.cmake DESTINATION lib/cmake/${PROJECT_NAME})
