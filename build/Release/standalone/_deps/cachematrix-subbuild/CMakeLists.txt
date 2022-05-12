# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.23.1)

# We name the project and the target for the ExternalProject_Add() call
# to something that will highlight to the user what we are working on if
# something goes wrong and an error message is produced.

project(cachematrix-populate NONE)



include(ExternalProject)
ExternalProject_Add(cachematrix-populate
                     "UPDATE_DISCONNECTED" "False"
                    SOURCE_DIR          "/home/matozinho/Documentos/EAD 2021/OAC/matrix-mul-cache/matrix-cache/standalone/.."
                    BINARY_DIR          "/home/matozinho/Documentos/EAD 2021/OAC/matrix-mul-cache/matrix-cache/build/Release/standalone/_deps/cachematrix-build"
                    CONFIGURE_COMMAND   ""
                    BUILD_COMMAND       ""
                    INSTALL_COMMAND     ""
                    TEST_COMMAND        ""
                    USES_TERMINAL_DOWNLOAD  YES
                    USES_TERMINAL_UPDATE    YES
                    USES_TERMINAL_PATCH     YES
)


