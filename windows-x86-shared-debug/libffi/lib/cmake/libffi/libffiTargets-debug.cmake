#----------------------------------------------------------------
# Generated CMake target import file for configuration "Debug".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "AsApp::ffi" for configuration "Debug"
set_property(TARGET AsApp::ffi APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(AsApp::ffi PROPERTIES
  IMPORTED_IMPLIB_DEBUG "${_IMPORT_PREFIX}/lib/ffi.lib"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/bin/ffi.dll"
  )

list(APPEND _cmake_import_check_targets AsApp::ffi )
list(APPEND _cmake_import_check_files_for_AsApp::ffi "${_IMPORT_PREFIX}/lib/ffi.lib" "${_IMPORT_PREFIX}/bin/ffi.dll" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
