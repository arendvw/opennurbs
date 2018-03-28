file(GLOB_RECURSE FREETYPE_INC ${CMAKE_CURRENT_SOURCE_DIR}/freetype263/include/*.h)
set(FREETYPE_SRC
        ${CMAKE_CURRENT_SOURCE_DIR}/freetype263/src/autofit/autofit.c
        ${CMAKE_CURRENT_SOURCE_DIR}/freetype263/src/bdf/bdf.c
        ${CMAKE_CURRENT_SOURCE_DIR}/freetype263/src/cff/cff.c
        ${CMAKE_CURRENT_SOURCE_DIR}/freetype263/src/base/ftbase.c
        ${CMAKE_CURRENT_SOURCE_DIR}/freetype263/src/base/ftbitmap.c
        ${CMAKE_CURRENT_SOURCE_DIR}/freetype263/src/base/ftfstype.c
        ${CMAKE_CURRENT_SOURCE_DIR}/freetype263/src/base/ftgasp.c
        ${CMAKE_CURRENT_SOURCE_DIR}/freetype263/src/base/ftglyph.c
        ${CMAKE_CURRENT_SOURCE_DIR}/freetype263/src/gzip/ftgzip.c
        ${CMAKE_CURRENT_SOURCE_DIR}/freetype263/src/base/ftinit.c
        ${CMAKE_CURRENT_SOURCE_DIR}/freetype263/src/lzw/ftlzw.c
        ${CMAKE_CURRENT_SOURCE_DIR}/freetype263/src/base/ftstroke.c
        ${CMAKE_CURRENT_SOURCE_DIR}/freetype263/src/base/ftsystem.c
        ${CMAKE_CURRENT_SOURCE_DIR}/freetype263/src/smooth/smooth.c
        ${CMAKE_CURRENT_SOURCE_DIR}/freetype263/src/base/ftbbox.c
        ${CMAKE_CURRENT_SOURCE_DIR}/freetype263/src/base/ftfntfmt.c
        ${CMAKE_CURRENT_SOURCE_DIR}/freetype263/src/base/ftgxval.c
        ${CMAKE_CURRENT_SOURCE_DIR}/freetype263/src/base/ftlcdfil.c
        ${CMAKE_CURRENT_SOURCE_DIR}/freetype263/src/base/ftmm.c
        ${CMAKE_CURRENT_SOURCE_DIR}/freetype263/src/base/ftotval.c
        ${CMAKE_CURRENT_SOURCE_DIR}/freetype263/src/base/ftpatent.c
        ${CMAKE_CURRENT_SOURCE_DIR}/freetype263/src/base/ftpfr.c
        ${CMAKE_CURRENT_SOURCE_DIR}/freetype263/src/base/ftsynth.c
        ${CMAKE_CURRENT_SOURCE_DIR}/freetype263/src/base/fttype1.c
        ${CMAKE_CURRENT_SOURCE_DIR}/freetype263/src/base/ftwinfnt.c
        ${CMAKE_CURRENT_SOURCE_DIR}/freetype263/src/pcf/pcf.c
        ${CMAKE_CURRENT_SOURCE_DIR}/freetype263/src/pfr/pfr.c
        ${CMAKE_CURRENT_SOURCE_DIR}/freetype263/src/psaux/psaux.c
        ${CMAKE_CURRENT_SOURCE_DIR}/freetype263/src/pshinter/pshinter.c
        ${CMAKE_CURRENT_SOURCE_DIR}/freetype263/src/psnames/psmodule.c
        ${CMAKE_CURRENT_SOURCE_DIR}/freetype263/src/raster/raster.c
        ${CMAKE_CURRENT_SOURCE_DIR}/freetype263/src/sfnt/sfnt.c
        ${CMAKE_CURRENT_SOURCE_DIR}/freetype263/src/truetype/truetype.c
        ${CMAKE_CURRENT_SOURCE_DIR}/freetype263/src/type1/type1.c
        ${CMAKE_CURRENT_SOURCE_DIR}/freetype263/src/cid/type1cid.c
        ${CMAKE_CURRENT_SOURCE_DIR}/freetype263/src/type42/type42.c
        ${CMAKE_CURRENT_SOURCE_DIR}/freetype263/src/winfonts/winfnt.c
        ${CMAKE_CURRENT_SOURCE_DIR}/freetype263/src/cache/ftcache.c
        )

if(${ON_BUILD_SHARED_LIBS})
    add_library(freetype SHARED
            ${FREETYPE_INC}
            ${FREETYPE_SRC}
            )
else()
    add_library(freetype OBJECT
            ${FREETYPE_INC}
            ${FREETYPE_SRC}
            )
endif()
target_include_directories(freetype PRIVATE ${CMAKE_CURRENT_SOURCE_DIR}/freetype263/include)
target_compile_definitions(freetype PRIVATE -DFT2_BUILD_LIBRARY)