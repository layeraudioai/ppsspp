# 3DS Toolchain file
set(CMAKE_SYSTEM_NAME Generic)
set(CMAKE_SYSTEM_PROCESSOR arm)

# Assume devkitARM is installed and DEVKITARM is set in the environment
if(NOT DEFINED ENV{DEVKITARM})
    message(FATAL_ERROR "DEVKITARM environment variable not set")
endif()

set(DEVKITARM_PATH $ENV{DEVKITARM})
set(CMAKE_C_COMPILER ${DEVKITARM_PATH}/bin/arm-none-eabi-gcc)
set(CMAKE_CXX_COMPILER ${DEVKITARM_PATH}/bin/arm-none-eabi-g++)

set(CMAKE_FIND_ROOT_PATH ${DEVKITARM_PATH}/arm-none-eabi)
set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)
