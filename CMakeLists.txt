# = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# CMAKE
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

# CMake Version
include( "cmake/constants.cmake" )
cmake_minimum_required( VERSION ${PROJECT_CMAKE_VERSION} )

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# CONFIGS
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

include( "cmake/globals.cmake" )

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# PROJECT
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

project( "Space Figter EX" VERSION ${APP_VERSION} LANGUAGES C CXX )

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# HEADERS
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

set( ENGINE_PUBLIC_DIR "${CMAKE_SOURCE_DIR}/engine/public/" )
set( GAME_PUBLIC_DIR "${CMAKE_SOURCE_DIR}/game/public/" )
set( HEADERS
    "${CMAKE_SOURCE_DIR}/src/game/windows/public/main.hpp"
)

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# SOURCES
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

set( ENGINE_PRIVATE_DIR "${CMAKE_SOURCE_DIR}/engine/private/" )
set( GAME_PRIVATE_DIR "${CMAKE_SOURCE_DIR}/game/private/" )
set( SOURCES
    "${CMAKE_SOURCE_DIR}/src/game/windows/private/main.cpp"
)

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# MODULES
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

# Configs
include( "${ZERO_DIR}/cmake/platform.cmake" )
include( "${ZERO_DIR}/cmake/build_types.cmake" )

# Core
include( "${GAME_CORE_DIR}/core.cmake" )

# Windows
if ( PLATFORM STREQUAL "windows" )
    include( "${GAME_WIN_DIR}/windows.cmake" )
endif ( PLATFORM STREQUAL "windows" )

# Linux
if ( PLATFORM STREQUAL "linux" )
    include( "${GAME_LINUX_DIR}/linux.cmake" )
endif ( PLATFORM STREQUAL "linux" )

# Android
if ( PLATFORM STREQUAL "android" )
    include( "${GAME_ANDROID_DIR}/android.cmake" )
endif ( PLATFORM STREQUAL "android" )

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# BUILD
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

# Add executable object
# Windows
if ( PLATFORM STREQUAL "windows" )
    include( "${GAME_WIN_DIR}/build.cmake" )
endif ( PLATFORM STREQUAL "windows" )

# Linux
if ( PLATFORM STREQUAL "linux" )
    include( "${GAME_LINUX_DIR}/build.cmake" )
endif ( PLATFORM STREQUAL "linux" )

# Android
if ( PLATFORM STREQUAL "android" )
    include( "${GAME_ANDROID_DIR}/build.cmake" )
endif ( PLATFORM STREQUAL "android" )

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# LIBRARIES
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

# Link executable with libraries
include( "cmake/${PLATFORM}_libs.cmake" )

# = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =