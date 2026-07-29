include("${CMAKE_CURRENT_LIST_DIR}/SQLite3Targets.cmake")
# 导出名为 SQLite::asapp_sqlite3；为业务仓提供稳定别名
if(TARGET SQLite::asapp_sqlite3)
    if(NOT TARGET SQLite::SQLite3)
        add_library(SQLite::SQLite3 INTERFACE IMPORTED)
        set_target_properties(SQLite::SQLite3 PROPERTIES
            INTERFACE_LINK_LIBRARIES SQLite::asapp_sqlite3)
    endif()
    if(NOT TARGET asapp_sqlite3)
        add_library(asapp_sqlite3 INTERFACE IMPORTED)
        set_target_properties(asapp_sqlite3 PROPERTIES
            INTERFACE_LINK_LIBRARIES SQLite::asapp_sqlite3)
    endif()
endif()
