# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

file(MAKE_DIRECTORY
  "/home/matozinho/Documentos/EAD 2021/OAC/matrix-mul-cache/matrix-cache/standalone/.."
  "/home/matozinho/Documentos/EAD 2021/OAC/matrix-mul-cache/matrix-cache/build/Release/standalone/_deps/cachematrix-build"
  "/home/matozinho/Documentos/EAD 2021/OAC/matrix-mul-cache/matrix-cache/build/Release/standalone/_deps/cachematrix-subbuild/cachematrix-populate-prefix"
  "/home/matozinho/Documentos/EAD 2021/OAC/matrix-mul-cache/matrix-cache/build/Release/standalone/_deps/cachematrix-subbuild/cachematrix-populate-prefix/tmp"
  "/home/matozinho/Documentos/EAD 2021/OAC/matrix-mul-cache/matrix-cache/build/Release/standalone/_deps/cachematrix-subbuild/cachematrix-populate-prefix/src/cachematrix-populate-stamp"
  "/home/matozinho/Documentos/EAD 2021/OAC/matrix-mul-cache/matrix-cache/build/Release/standalone/_deps/cachematrix-subbuild/cachematrix-populate-prefix/src"
  "/home/matozinho/Documentos/EAD 2021/OAC/matrix-mul-cache/matrix-cache/build/Release/standalone/_deps/cachematrix-subbuild/cachematrix-populate-prefix/src/cachematrix-populate-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "/home/matozinho/Documentos/EAD 2021/OAC/matrix-mul-cache/matrix-cache/build/Release/standalone/_deps/cachematrix-subbuild/cachematrix-populate-prefix/src/cachematrix-populate-stamp/${subDir}")
endforeach()
