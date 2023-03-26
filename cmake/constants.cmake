# = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# CMake
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

set( PROJECT_CMAKE_VERSION 3.22.1 )
set( APP_VERSION 0.1.2 )

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# DIRS
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

set( APP_SRC_DIR ${CMAKE_SOURCE_DIR} )
set( ZERO_DIR "${APP_SRC_DIR}/src/engine" )
set( APP_SRC_DIR "${APP_SRC_DIR}/src/game" )
set( APP_LIBS_DIR "${CMAKE_SOURCE_DIR}/libs" )

# = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =
