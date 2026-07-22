# Aggregated entry (optional). Prefer per-package find_package via CMAKE_PREFIX_PATH.
# Business CMake should prepend:
#   ${ASAPP_THIRD_PARTY_ROOT}/nlohmann_json
#   ${ASAPP_THIRD_PARTY_ROOT}/stb
#   ...

include_guard(GLOBAL)
message(STATUS "AsAppThirdPartyConfig: use per-package Config.cmake under the active slice")
