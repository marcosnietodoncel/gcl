SET( LIBRARY_OUTPUT_PATH ${PROJECT_BINARY_DIR}/bin/ CACHE PATH "Single output directory for building all libraries." FORCE )

message("Library output directory for project " ${PROJECT_NAME} " : " ${LIBRARY_OUTPUT_PATH} )

if(ADD_GCL_CORE)
add_subdirectory(core)
endif(ADD_GCL_CORE)

