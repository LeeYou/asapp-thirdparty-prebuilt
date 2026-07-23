if(TARGET spdlog::spdlog)
  return()
endif()
add_library(spdlog INTERFACE)
add_library(spdlog::spdlog ALIAS spdlog)
get_filename_component(_SPDLOG_PREFIX "${CMAKE_CURRENT_LIST_DIR}/../../.." ABSOLUTE)
target_include_directories(spdlog INTERFACE "${_SPDLOG_PREFIX}/include")
# 勿定义 SPDLOG_HEADER_ONLY：common.h 在未定义 SPDLOG_COMPILED_LIB 时会自行 #define；
# 命令行再传会导致 MSVC C4005，CEF /WX 下升为 C2220。
