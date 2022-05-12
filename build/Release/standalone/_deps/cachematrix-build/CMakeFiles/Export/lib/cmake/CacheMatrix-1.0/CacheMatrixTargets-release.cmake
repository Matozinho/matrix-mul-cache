#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "CacheMatrix::CacheMatrix" for configuration "Release"
set_property(TARGET CacheMatrix::CacheMatrix APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(CacheMatrix::CacheMatrix PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "CXX"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/CacheMatrix-1.0/libCacheMatrix.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS CacheMatrix::CacheMatrix )
list(APPEND _IMPORT_CHECK_FILES_FOR_CacheMatrix::CacheMatrix "${_IMPORT_PREFIX}/lib/CacheMatrix-1.0/libCacheMatrix.a" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
