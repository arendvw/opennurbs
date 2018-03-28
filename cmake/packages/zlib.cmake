file(GLOB ZLIB_SRC ${CMAKE_CURRENT_SOURCE_DIR}/zlib/*.c)
file(GLOB ZLIB_INC ${CMAKE_CURRENT_SOURCE_DIR}/zlib/*.h)
#-DMY_ZCALLOC -DZ_PREFIX
# Add library to build.cd
if(${ON_BUILD_SHARED_LIBS})
    add_library(zlib SHARED
            ${ZLIB_SRC}
            ${ZLIB_INC}
            )
else()
    add_library(zlib OBJECT
            ${ZLIB_SRC}
            ${ZLIB_INC}
            )
endif()
target_compile_definitions(zlib PRIVATE MY_ZCALLOC -DZ_PREFIX)
