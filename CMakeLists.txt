if(DEFINED AMIGA_GCC_PREFIX)
       include(bebbo-toolchain.cmake)
else()
       if(NOT WIN32)
              message(FATAL_ERROR "Bartman's toolchain works only on Windows. Define AMIGA_GCC_PREFIX to point to Bebbo's toolchain")
       endif()
       # the toolchain usage redefines WIN32, so we provide another variable
       set(IS_WIN32 1)
       include(bartman-toolchain.cmake)
       # this is a workaround for a cmake bug when using nmake and gnumake on windows
       # see: https://gitlab.kitware.com/cmake/cmake/-/issues/21997
       set(CMAKE_DEPENDS_USE_COMPILER OFF)
endif()

cmake_minimum_required(VERSION 3.16)
project(hello)

add_subdirectory(deps/ACE ace)
include_directories(deps/ACE/include)

include_directories(
        ${PROJECT_SOURCE_DIR}/src
)

set(C_SOURCES src/main.c
              src/game.c)

set(HEADERS src/game.h)

set(SOURCES ${C_SOURCES} ${HEADERS})

include(target-definition.cmake)
