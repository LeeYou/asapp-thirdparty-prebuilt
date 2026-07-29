#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "SQLite::asapp_sqlite3" for configuration "Release"
set_property(TARGET SQLite::asapp_sqlite3 APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(SQLite::asapp_sqlite3 PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libasapp_sqlite3.so"
  IMPORTED_SONAME_RELEASE "libasapp_sqlite3.so"
  )

list(APPEND _cmake_import_check_targets SQLite::asapp_sqlite3 )
list(APPEND _cmake_import_check_files_for_SQLite::asapp_sqlite3 "${_IMPORT_PREFIX}/lib/libasapp_sqlite3.so" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
