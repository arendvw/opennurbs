file(GLOB_RECURSE FREETYPE_INC freetype263/include/*.h)
set(FREETYPE_SRC freetype263/src/autofit/autofit.c
        freetype263/src/bdf/bdf.c
        freetype263/src/cff/cff.c
        freetype263/src/base/ftbase.c
        freetype263/src/base/ftbitmap.c
        freetype263/src/base/ftfstype.c
        freetype263/src/base/ftgasp.c
        freetype263/src/base/ftglyph.c
        freetype263/src/gzip/ftgzip.c
        freetype263/src/base/ftinit.c
        freetype263/src/lzw/ftlzw.c
        freetype263/src/base/ftstroke.c
        freetype263/src/base/ftsystem.c
        freetype263/src/smooth/smooth.c
        freetype263/src/base/ftbbox.c
        freetype263/src/base/ftfntfmt.c
        freetype263/src/base/ftgxval.c
        freetype263/src/base/ftlcdfil.c
        freetype263/src/base/ftmm.c
        freetype263/src/base/ftotval.c
        freetype263/src/base/ftpatent.c
        freetype263/src/base/ftpfr.c
        freetype263/src/base/ftsynth.c
        freetype263/src/base/fttype1.c
        freetype263/src/base/ftwinfnt.c
        freetype263/src/pcf/pcf.c
        freetype263/src/pfr/pfr.c
        freetype263/src/psaux/psaux.c
        freetype263/src/pshinter/pshinter.c
        freetype263/src/psnames/psmodule.c
        freetype263/src/raster/raster.c
        freetype263/src/sfnt/sfnt.c
        freetype263/src/truetype/truetype.c
        freetype263/src/type1/type1.c
        freetype263/src/cid/type1cid.c
        freetype263/src/type42/type42.c
        freetype263/src/winfonts/winfnt.c
        freetype263/src/cache/ftcache.c
        )

if(${BUILD_SHARED_LIBS})
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
target_include_directories(freetype PRIVATE freetype263/include)
target_compile_definitions(freetype PRIVATE -DFT2_BUILD_LIBRARY)