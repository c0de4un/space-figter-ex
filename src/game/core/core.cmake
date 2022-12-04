# = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# HEADERS
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

set( APP_CORE_PUBLIC "${GAME_CORE_DIR}/public/game/core/" )
set( APP_HEADERS
    # Application
    "${APP_CORE_PUBLIC}app/GameApp.hpp"
    ${APP_HEADERS} )

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# SOURCES
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

set( APP_CORE_PRIVATE "${GAME_CORE_DIR}/private/game/core/" )
set( APP_SOURCES
    # Application
    "${APP_CORE_PRIVATE}app/GameApp.cpp"
    ${APP_SOURCES} )

# = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =
