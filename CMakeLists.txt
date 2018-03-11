cmake_minimum_required(VERSION 3.0.0 FATAL_ERROR)

################### Variables. ####################
# Change if you want modify path or other values. #
###################################################

set(PROJECT_NAME opennurbs_lib)
# Build as shared, or as static
set(BUILD_SHARED_LIBS ON)

# Output Variables
set(OUTPUT_DEBUG Build/Debug/bin)
set(OUTPUT_RELEASE Build/Release/bin)
# Folders files
set(PROJECT_SOURCE_DIR .)
set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/lib)
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/lib)
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/bin)

message(${CMAKE_BINARY_DIR})

############## CMake Project ################
#        The main options of project        #
#############################################

project(${PROJECT_NAME} CXX C)
#project(${PROJECT_NAME}2 C)

# Define Release by default.
if (NOT CMAKE_BUILD_TYPE)
    set(CMAKE_BUILD_TYPE "Release")
    message(STATUS "Build type not specified: Use Release by default.")
endif (NOT CMAKE_BUILD_TYPE)

SET(ON_COMPILE -DON_COMPILING_OPENNURBS)
SET(ON_GENERAL)

############## Artefacts Output #################
# Defines outputs , depending Debug or Release. #
#################################################

if (CMAKE_BUILD_TYPE STREQUAL "Debug")
    set(CMAKE_LIBRARY_OUTPUT_DIRECTORY "${CMAKE_BINARY_DIR}/${OUTPUT_DEBUG}")
    set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY "${CMAKE_BINARY_DIR}/${OUTPUT_DEBUG}")
    set(CMAKE_EXECUTABLE_OUTPUT_DIRECTORY "${CMAKE_BINARY_DIR}/${OUTPUT_DEBUG}")
else ()
    set(CMAKE_LIBRARY_OUTPUT_DIRECTORY "${CMAKE_BINARY_DIR}/${OUTPUT_REL}")
    set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY "${CMAKE_BINARY_DIR}/${OUTPUT_REL}")
    set(CMAKE_EXECUTABLE_OUTPUT_DIRECTORY "${CMAKE_BINARY_DIR}/${OUTPUT_REL}")
endif ()

################# Flags ################
# Defines Flags for Windows and Linux. #
########################################

if (MSVC)
    set(CMAKE_CXX_FLAGS_DEBUG "${CMAKE_CXX_FLAGS_DEBUG} /MD /Od /EHsc")
    set(CMAKE_CXX_FLAGS_RELEASE "${CMAKE_CXX_FLAGS_RELEASE} /GL /Od /Oi /Gy /EHsc")
endif (MSVC)
if (NOT MSVC)
    if (UNIX AND NOT APPLE)
        SET(ON_GENERAL "${ON_GENERAL}ON_RUNTIME_ANDROID")
        include(TestBigEndian)
        TEST_BIG_ENDIAN(IS_BIG_ENDIAN)
        if (IS_BIG_ENDIAN)
            SET(ON_GENERAL "${ON_GENERAL} -DON_BIG_ENDIAN")
        else ()
            SET(ON_GENERAL "${ON_GENERAL} -DON_LITTLE_ENDIAN")
        endif ()
    endif ()
    set(CMAKE_C_FLAGS_INIT "-Wall -std=c11")
    set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Wall -std=c++14 -Wno-unknown-pragmas -Wno-unused-private-field -Wno-switch -Wno-overloaded-virtual")
    if ("${CMAKE_CXX_COMPILER_ID}" STREQUAL "Clang")
        set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -stdlib=libc++")
    endif ()
endif (NOT MSVC)

if (CMAKE_SIZEOF_VOID_P EQUAL 8)
    SET(ON_GENERAL "${ON_GENERAL} -DON_64BIT_RUNTIME")
elseif (CMAKE_SIZEOF_VOID_P EQUAL 4)
    SET(ON_GENERAL "${ON_GENERAL} -DON_64BIT_RUNTIME")
endif ()

# using pkg-config to configure uuid
find_package(PkgConfig REQUIRED)
find_package(Threads REQUIRED)

pkg_search_module(UUID REQUIRED uuid)

message(" hoi ${GCC_COVERAGE_LINK_FLAGS}")
include(cmake/packages/zlib.cmake)
include(cmake/packages/freetype.cmake)
include(cmake/packages/opennurbs.cmake)
include(cmake/packages/examples.cmake)


# add_executable(example_read/example_read.ccp examples.h example_userdata/example_ud.h)

# EXAMPLES = example_read/example_read \
#       example_write/example_write \
#       example_convert/example_convert \
#       example_brep/example_brep \
#       example_roundtrip/example_roundtrip \
#       example_userdata/example_userdata


#add_library(${PROJECT_NAME} STATIC
#        ${FREETYPE_INC}
#        ${FREETYPE_SRC}
#        ${HEADERS}
#        ${SOURCE}
#        )

