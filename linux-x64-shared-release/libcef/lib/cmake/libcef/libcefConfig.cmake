if(TARGET AsApp::libcef)
  return()
endif()
get_filename_component(_LIBCEF_PREFIX "${CMAKE_CURRENT_LIST_DIR}/../../.." ABSOLUTE)
add_library(AsApp::libcef UNKNOWN IMPORTED)
if(WIN32)
  set_target_properties(AsApp::libcef PROPERTIES
    IMPORTED_LOCATION "${_LIBCEF_PREFIX}/lib/libcef.lib"
    INTERFACE_INCLUDE_DIRECTORIES "${_LIBCEF_PREFIX}/include")
else()
  set_target_properties(AsApp::libcef PROPERTIES
    IMPORTED_LOCATION "${_LIBCEF_PREFIX}/lib/libcef.so"
    INTERFACE_INCLUDE_DIRECTORIES "${_LIBCEF_PREFIX}/include")
endif()
set(AsApp_libcef_PREFIX "${_LIBCEF_PREFIX}" CACHE PATH "AsApp libcef package root")
set(AsApp_libcef_BIN_DIR "${_LIBCEF_PREFIX}/Release" CACHE PATH "AsApp libcef runtime bin (Release/)")
set(AsApp_libcef_RELEASE_DIR "${_LIBCEF_PREFIX}/Release" CACHE PATH "AsApp libcef Release")
set(AsApp_libcef_RESOURCES_DIR "${_LIBCEF_PREFIX}/Resources" CACHE PATH "AsApp libcef Resources")
set(AsApp_libcef_LOCALES_DIR "${_LIBCEF_PREFIX}/locales" CACHE PATH "AsApp libcef locales")
set(AsApp_libcef_SDK_ROOT "${_LIBCEF_PREFIX}" CACHE PATH "AsApp libcef SDK root (FindCEF/libcef_dll)")
