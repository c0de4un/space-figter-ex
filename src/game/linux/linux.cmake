# = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# HEADERS
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

set( APP_LINUX_PUBLIC "${GAME_LINUX_DIR}/public/game/linux/" )
set( APP_HEADERS
    # MAIN
    "${APP_LINUX_PUBLIC}/main.hpp"
    ${APP_HEADERS} )

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# SOURCES
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

set( APP_LINUX_PRIVATE "${GAME_LINUX_DIR}/private/game/linux/" )
set( APP_SOURCES
    # MAIN
    "${APP_LINUX_PRIVATE}/main.cpp"
    ${APP_SOURCES} )

# = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =
