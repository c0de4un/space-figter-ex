# = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# HEADERS
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

set( APP_ANDROID_PUBLIC "${GAME_ANDROID_DIR}/public/game/android/" )
set( APP_HEADERS
    # MAIN
    "${APP_ANDROID_PUBLIC}/native-lib.hpp"
    ${APP_HEADERS} )

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# SOURCES
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

set( APP_ANDROID_PRIVATE "${GAME_ANDROID_DIR}/private/game/android/" )
set( APP_SOURCES
    # MAIN
    "${APP_ANDROID_PRIVATE}/native-lib.cpp"
    ${APP_SOURCES} )

# = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =
