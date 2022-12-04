# = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# zEngine
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

# Add zEngine as module
add_subdirectory( ${ZERO_DIR} )

# Include zEngine.Core
target_include_directories( game PUBLIC "${ZERO_DIR}/src/core/public" )

# Link with zEngine
target_link_libraries( game zengine )

# = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =
