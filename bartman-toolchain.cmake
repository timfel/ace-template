include(common-toolchain.cmake)

if(CMAKE_GENERATOR STREQUAL "Unix Makefiles")
    set(CMAKE_MAKE_PROGRAM "${CMAKE_SOURCE_DIR}/deps/vscode-amiga-debug/bin/gnumake.exe" CACHE STRING "")
endif()

set(TOOLCHAIN_PATH "${CMAKE_SOURCE_DIR}/deps/vscode-amiga-debug/bin/opt" CACHE STRING "")
set(TOOLCHAIN_PREFIX "m68k-amiga-elf" CACHE STRING "")
set(M68K_CPU "68000" CACHE STRING "")
set(M68K_FPU "soft" CACHE STRING "")

message(STATUS "TOOLCHAIN_PATH: ${TOOLCHAIN_PATH}")
message(STATUS "TOOLCHAIN_PREFIX: ${TOOLCHAIN_PREFIX}")
message(STATUS "M68K_CPU: ${M68K_CPU}")
message(STATUS "M68K_FPU: ${M68K_FPU}")

set(CMAKE_TOOLCHAIN_FILE "${CMAKE_SOURCE_DIR}/deps/AmigaCMakeCrossToolchains/m68k-bartman.cmake" CACHE STRING "")

set(CMAKE_C_STANDARD 11)
set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -DAMIGA -Wall -Wextra -fomit-frame-pointer")
set(CMAKE_C_FLAGS_DEBUG "${CMAKE_C_FLAGS_DEBUG} -DACE_DEBUG")
