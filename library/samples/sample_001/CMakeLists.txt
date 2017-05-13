#---------------------------------------------------#
#          CMake Project Configuration              #
#---------------------------------------------------#
# CMake will issue a warning if you don't set this
cmake_minimum_required(VERSION 2.6)

##############################
set(SAMPLE_NAME sample_001)
PROJECT( ${SAMPLE_NAME} )
##############################

if(COMMAND cmake_policy)
     cmake_policy(SET CMP0003 NEW)
endif(COMMAND cmake_policy)

#---------------------------------------------------#
#              Project Files                        #
#---------------------------------------------------#
# List source files in a variable so we can use it later more conveniently
set(SOURCE_FILES 
	main.cpp		
)


# Add all sources defined above to the program
include_directories( ${GCL_SOURCE_DIR}/modules/core/include )
link_directories( ${CMAKE_BINARY_DIR}/bin )
add_executable( ${SAMPLE_NAME} ${SOURCE_FILES} )


# Link libraries that are required for building this application
target_link_libraries( ${SAMPLE_NAME} gcl_core )


set_target_properties(${SAMPLE_NAME} PROPERTIES FOLDER "gcl_samples")
