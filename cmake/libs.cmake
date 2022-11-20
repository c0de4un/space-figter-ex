# = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# zEngine
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

# Add zEngine as module
add_subdirectory( ${ENGINE_DIR} )


# Include zEngine.Core
target_include_directories( game PUBLIC "${ENGINE_DIR}/src/core/public" )

# Link with zEngine
target_link_libraries( game zengine )

# = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =
