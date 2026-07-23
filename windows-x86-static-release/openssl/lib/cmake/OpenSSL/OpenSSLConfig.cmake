if(TARGET OpenSSL::SSL)
  return()
endif()
get_filename_component(_OPENSSL_ROOT "${CMAKE_CURRENT_LIST_DIR}/../../.." ABSOLUTE)
add_library(OpenSSL::Crypto STATIC IMPORTED)
set_target_properties(OpenSSL::Crypto PROPERTIES
  IMPORTED_LOCATION "${_OPENSSL_ROOT}/lib/libcrypto.lib"
  INTERFACE_INCLUDE_DIRECTORIES "${_OPENSSL_ROOT}/include")
add_library(OpenSSL::SSL STATIC IMPORTED)
set_target_properties(OpenSSL::SSL PROPERTIES
  IMPORTED_LOCATION "${_OPENSSL_ROOT}/lib/libssl.lib"
  INTERFACE_INCLUDE_DIRECTORIES "${_OPENSSL_ROOT}/include"
  INTERFACE_LINK_LIBRARIES OpenSSL::Crypto)
set(OPENSSL_FOUND TRUE)
set(OPENSSL_INCLUDE_DIR "${_OPENSSL_ROOT}/include")
set(OPENSSL_CRYPTO_LIBRARY "${_OPENSSL_ROOT}/lib/libcrypto.lib")
set(OPENSSL_SSL_LIBRARY "${_OPENSSL_ROOT}/lib/libssl.lib")
set(OPENSSL_VERSION "3.5.6")
