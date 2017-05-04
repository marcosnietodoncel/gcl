cmake_minimum_required(VERSION 3.1)
set(MAIN_LIBRARY_NAME gcl)
project( ${MAIN_LIBRARY_NAME} )

set_property(GLOBAL PROPERTY USE_FOLDERS ON) # to organize in folders

set(MAIN_PROJECT_BUILD_PATH ${PROJECT_BINARY_DIR})

# Version
set(gcl_MAJOR_VERSION 3)
set(gcl_MINOR_VERSION 0)
message(gcl_MAJOR_VERSION: ${gcl_MAJOR_VERSION})
message(gcl_MINOR_VERSION: ${gcl_MINOR_VERSION})

# Options
option( ADD_GCL_CORE "Add GCL core" ON)
option( ADD_GCL_IO "Add GCL io" ON)

# Add subdirectories
add_subdirectory(modules)

# Configure template
configure_file("${CMAKE_CURRENT_SOURCE_DIR}/${MAIN_LIBRARY_NAME}.cmake.in" "${PROJECT_BINARY_DIR}/${MAIN_LIBRARY_NAME}Config.cmake" @ONLY)

# Install <package>Config.cmake, so this library can be found via find_package
install(FILES ${PROJECT_BINARY_DIR}/${PROJECT_NAME}Config.cmake DESTINATION lib/cmake/${PROJECT_NAME})
