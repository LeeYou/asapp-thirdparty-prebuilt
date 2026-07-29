if(TARGET AsApp::ffi)
  return()
endif()
get_filename_component(_FFI_ROOT "${CMAKE_CURRENT_LIST_DIR}/../../.." ABSOLUTE)
add_library(AsApp::ffi STATIC IMPORTED)
set_target_properties(AsApp::ffi PROPERTIES
  IMPORTED_LOCATION "${_FFI_ROOT}/lib/libffi.a"
  INTERFACE_INCLUDE_DIRECTORIES "${_FFI_ROOT}/include")
if(NOT TARGET AsApp::libffi)
  add_library(AsApp::libffi INTERFACE IMPORTED)
  set_target_properties(AsApp::libffi PROPERTIES INTERFACE_LINK_LIBRARIES AsApp::ffi)
endif()
