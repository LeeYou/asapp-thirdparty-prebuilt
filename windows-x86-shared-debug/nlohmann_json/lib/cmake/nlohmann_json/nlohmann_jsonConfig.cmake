if(TARGET nlohmann_json::nlohmann_json)
  return()
endif()
add_library(nlohmann_json::nlohmann_json INTERFACE IMPORTED)
get_filename_component(_NLOHMANN_PREFIX "${CMAKE_CURRENT_LIST_DIR}/../../.." ABSOLUTE)
set_target_properties(nlohmann_json::nlohmann_json PROPERTIES
  INTERFACE_INCLUDE_DIRECTORIES "${_NLOHMANN_PREFIX}/include")
