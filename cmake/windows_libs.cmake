# = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# GLFW
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

set( ZERO_GLFW_DIR "${APP_LIBS_DIR}/glfw/windows/x64_x86" )
set( ZERO_GLFW_INCLUDES_DIR "${ZERO_GLFW_DIR}/include" )
set( ZERO_GLFW_LIBS_DIR "${ZERO_GLFW_DIR}/lib-vc2022" )

if (NOT EXISTS "${ZERO_GLFW_INCLUDES_DIR}/GLFW/glfw3.h")
    message(FATAL_ERROR "${PROJECT_NAME} - glfw include path is invalid ${ZERO_GLFW_INCLUDES_DIR}")
endif (NOT EXISTS "${ZERO_GLFW_INCLUDES_DIR}/GLFW/glfw3.h")

if (NOT EXISTS "${ZERO_GLFW_LIBS_DIR}/glfw3.lib")
    message(FATAL_ERROR "${PROJECT_NAME} - glfw lib not found at ${ZERO_GLFW_LIBS_DIR}")
endif (NOT EXISTS "${ZERO_GLFW_LIBS_DIR}/glfw3.lib")

# Add STATIC GLFW Library
add_library( glfw3 STATIC IMPORTED )

# Set GLFW Library-Object Properties
set_target_properties( glfw3 PROPERTIES
    IMPORTED_LOCATION "${ZERO_GLFW_LIBS_DIR}/glfw3.lib" )

# Link with GLFW
target_link_libraries( game glfw3 )

# Include GLFW Headers
target_include_directories ( game PRIVATE ${ZERO_GLFW_INCLUDES_DIR} )

message ( STATUS "${PROJECT_NAME} - GLFW3 added as STATIC library from ${GLFW3_LOCATION}" )

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# zEngine
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

# Add zEngine as module
add_subdirectory( ${ZERO_DIR} )

# Include zEngine.Core
target_include_directories( game PUBLIC "${ZERO_DIR}/src/core/public" )

# Include zEngine.Windows
target_include_directories( game PUBLIC "${ZERO_DIR}/src/windows/public" )

# Link with zEngine
target_link_libraries( game zengine )

# = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =
