if(TARGET OpenSSL::SSL)
  return()
endif()
get_filename_component(_OPENSSL_ROOT "${CMAKE_CURRENT_LIST_DIR}/../../.." ABSOLUTE)
set(_CRYPTO_SO "${_OPENSSL_ROOT}/lib/libcrypto.so")
set(_SSL_SO "${_OPENSSL_ROOT}/lib/libssl.so")
if(NOT EXISTS "${_CRYPTO_SO}")
  file(GLOB _CRYPTO_CAND "${_OPENSSL_ROOT}/lib/libcrypto.so.*")
  list(GET _CRYPTO_CAND 0 _CRYPTO_SO)
endif()
if(NOT EXISTS "${_SSL_SO}")
  file(GLOB _SSL_CAND "${_OPENSSL_ROOT}/lib/libssl.so.*")
  list(GET _SSL_CAND 0 _SSL_SO)
endif()
add_library(OpenSSL::Crypto SHARED IMPORTED)
set_target_properties(OpenSSL::Crypto PROPERTIES
  IMPORTED_LOCATION "${_CRYPTO_SO}"
  INTERFACE_INCLUDE_DIRECTORIES "${_OPENSSL_ROOT}/include"
  INTERFACE_LINK_LIBRARIES "pthread;dl")
add_library(OpenSSL::SSL SHARED IMPORTED)
set_target_properties(OpenSSL::SSL PROPERTIES
  IMPORTED_LOCATION "${_SSL_SO}"
  INTERFACE_INCLUDE_DIRECTORIES "${_OPENSSL_ROOT}/include"
  INTERFACE_LINK_LIBRARIES "OpenSSL::Crypto")
set(OPENSSL_FOUND TRUE)
set(OPENSSL_INCLUDE_DIR "${_OPENSSL_ROOT}/include")
set(OPENSSL_CRYPTO_LIBRARY "${_CRYPTO_SO}")
set(OPENSSL_SSL_LIBRARY "${_SSL_SO}")
set(OPENSSL_VERSION "3.5.6")
