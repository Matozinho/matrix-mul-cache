# Install script for directory: /home/matozinho/Documentos/EAD 2021/OAC/matrix-mul-cache/matrix-cache

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "0")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/usr/bin/objdump")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/matozinho/Documentos/EAD 2021/OAC/matrix-mul-cache/matrix-cache/build/Release/standalone/_deps/cachematrix-build/external/cmake_install.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xCacheMatrix_Developmentx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/CacheMatrix-1.0" TYPE DIRECTORY FILES "/home/matozinho/Documentos/EAD 2021/OAC/matrix-mul-cache/matrix-cache/build/Release/standalone/_deps/cachematrix-build/PackageProjectInclude/")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xCacheMatrix_Developmentx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/CacheMatrix-1.0" TYPE STATIC_LIBRARY FILES "/home/matozinho/Documentos/EAD 2021/OAC/matrix-mul-cache/matrix-cache/build/Release/standalone/_deps/cachematrix-build/libCacheMatrix.a")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xCacheMatrix_Developmentx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/CacheMatrix-1.0/CacheMatrixTargets.cmake")
    file(DIFFERENT EXPORT_FILE_CHANGED FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/CacheMatrix-1.0/CacheMatrixTargets.cmake"
         "/home/matozinho/Documentos/EAD 2021/OAC/matrix-mul-cache/matrix-cache/build/Release/standalone/_deps/cachematrix-build/CMakeFiles/Export/lib/cmake/CacheMatrix-1.0/CacheMatrixTargets.cmake")
    if(EXPORT_FILE_CHANGED)
      file(GLOB OLD_CONFIG_FILES "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/CacheMatrix-1.0/CacheMatrixTargets-*.cmake")
      if(OLD_CONFIG_FILES)
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/CacheMatrix-1.0/CacheMatrixTargets.cmake\" will be replaced.  Removing files [${OLD_CONFIG_FILES}].")
        file(REMOVE ${OLD_CONFIG_FILES})
      endif()
    endif()
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/CacheMatrix-1.0" TYPE FILE FILES "/home/matozinho/Documentos/EAD 2021/OAC/matrix-mul-cache/matrix-cache/build/Release/standalone/_deps/cachematrix-build/CMakeFiles/Export/lib/cmake/CacheMatrix-1.0/CacheMatrixTargets.cmake")
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/CacheMatrix-1.0" TYPE FILE FILES "/home/matozinho/Documentos/EAD 2021/OAC/matrix-mul-cache/matrix-cache/build/Release/standalone/_deps/cachematrix-build/CMakeFiles/Export/lib/cmake/CacheMatrix-1.0/CacheMatrixTargets-release.cmake")
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xCacheMatrix_Developmentx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/CacheMatrix-1.0" TYPE FILE FILES
    "/home/matozinho/Documentos/EAD 2021/OAC/matrix-mul-cache/matrix-cache/build/Release/standalone/_deps/cachematrix-build/CacheMatrixConfigVersion.cmake"
    "/home/matozinho/Documentos/EAD 2021/OAC/matrix-mul-cache/matrix-cache/build/Release/standalone/_deps/cachematrix-build/CacheMatrixConfig.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xCacheMatrix_Developmentx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/CacheMatrix-1.0" TYPE DIRECTORY FILES "/home/matozinho/Documentos/EAD 2021/OAC/matrix-mul-cache/matrix-cache/include/")
endif()

