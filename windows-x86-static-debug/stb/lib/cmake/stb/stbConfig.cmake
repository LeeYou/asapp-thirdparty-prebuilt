if(TARGET AsApp::stb)
  return()
endif()
add_library(AsApp::stb INTERFACE IMPORTED)
get_filename_component(_STB_PREFIX "${CMAKE_CURRENT_LIST_DIR}/../../.." ABSOLUTE)
set_target_properties(AsApp::stb PROPERTIES
  INTERFACE_INCLUDE_DIRECTORIES "${_STB_PREFIX}/include")
