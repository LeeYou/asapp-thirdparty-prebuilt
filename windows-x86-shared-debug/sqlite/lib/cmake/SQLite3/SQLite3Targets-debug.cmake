#----------------------------------------------------------------
# Generated CMake target import file for configuration "Debug".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "SQLite::asapp_sqlite3" for configuration "Debug"
set_property(TARGET SQLite::asapp_sqlite3 APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(SQLite::asapp_sqlite3 PROPERTIES
  IMPORTED_IMPLIB_DEBUG "${_IMPORT_PREFIX}/lib/asapp_sqlite3.lib"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/bin/asapp_sqlite3.dll"
  )

list(APPEND _cmake_import_check_targets SQLite::asapp_sqlite3 )
list(APPEND _cmake_import_check_files_for_SQLite::asapp_sqlite3 "${_IMPORT_PREFIX}/lib/asapp_sqlite3.lib" "${_IMPORT_PREFIX}/bin/asapp_sqlite3.dll" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
