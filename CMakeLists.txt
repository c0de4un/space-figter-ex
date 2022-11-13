# = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# CMAKE
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

# CMake Version
cmake_minimum_required(VERSION 3.18.1)

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# PROJECT
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

project("Hello-GLFW")

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
# BUILD
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

# Add executable object
add_executable(game ${HEADERS} ${SOURCES})

# = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =