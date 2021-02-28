set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

set(CMAKE_CONFIGURATION_TYPES "Debug;Release" CACHE STRING "" FORCE)
if(CMAKE_BUILD_TYPE STREQUAL "Debug")
        set(GAME_DEBUG 1)
        set(ACE_DEBUG 1)
	message("Debug mode: Yes (Disable by param -DCMAKE_BUILD_TYPE=Release)")
else()
	message("Debug mode: No (Enable by param -DCMAKE_BUILD_TYPE=Debug)")
endif()

if(GAME_DEBUG)
        set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -DGAME_DEBUG")
endif()
if(ACE_DEBUG)
        # For ACE headers with ifdefs
        set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -DACE_DEBUG -DACE_DEBUG_ALL -DACE_DEBUG_UAE")
endif()
