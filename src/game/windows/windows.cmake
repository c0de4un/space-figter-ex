# = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# HEADERS
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

set( APP_WIN_PUBLIC "${GAME_WIN_DIR}/public/" )
set( APP_HEADERS
    # MAIN
    "${APP_WIN_PUBLIC}main.hpp"
    ${APP_HEADERS} )

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# SOURCES
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

set( APP_WIN_PRIVATE "${GAME_WIN_DIR}/private/" )
set( APP_SOURCES
    # MAIN
    "${APP_WIN_PRIVATE}main.cpp"
    ${APP_SOURCES} )

# = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =
