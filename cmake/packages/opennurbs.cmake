
set(ON_HEADERS 
        opennurbs.h
        opennurbs_3dm.h
        opennurbs_3dm_attributes.h
        opennurbs_3dm_properties.h
        opennurbs_3dm_settings.h
        opennurbs_annotationbase.h
        opennurbs_arc.h
        opennurbs_arccurve.h
        opennurbs_archive.h
        opennurbs_array.h
        opennurbs_array_defs.h
        opennurbs_base32.h
        opennurbs_base64.h
        opennurbs_beam.h
        opennurbs_bezier.h
        opennurbs_bitmap.h
        opennurbs_bounding_box.h
        opennurbs_box.h
        opennurbs_brep.h
        opennurbs_circle.h
        opennurbs_color.h
        opennurbs_compress.h
        opennurbs_compstat.h
        opennurbs_cone.h
        opennurbs_crc.h
        opennurbs_curve.h
        opennurbs_curveonsurface.h
        opennurbs_curveproxy.h
        opennurbs_cylinder.h
        opennurbs_date.h
        opennurbs_defines.h
        opennurbs_detail.h
        opennurbs_dimension.h
        opennurbs_dimensionformat.h
        opennurbs_dimensionstyle.h
        opennurbs_dll_resource.h
        opennurbs_ellipse.h
        opennurbs_error.h
        opennurbs_evaluate_nurbs.h
        opennurbs_extensions.h
        opennurbs_file_utilities.h
        opennurbs_font.h
        opennurbs_fpoint.h
        opennurbs_freetype.h
        opennurbs_freetype_include.h
        opennurbs_fsp.h
        opennurbs_fsp_defs.h
        opennurbs_function_list.h
        opennurbs_geometry.h
        opennurbs_group.h
        opennurbs_hash_table.h
        opennurbs_hatch.h
        opennurbs_hsort_template.h
        opennurbs_input_libsdir.h
        opennurbs_instance.h
        opennurbs_internal_defines.h
        opennurbs_internal_glyph.h
        opennurbs_internal_V2_annotation.h
        opennurbs_internal_V5_annotation.h
        opennurbs_internal_V5_dimstyle.h
        opennurbs_intersect.h
        opennurbs_ipoint.h
        opennurbs_knot.h
        opennurbs_layer.h
        opennurbs_leader.h
        opennurbs_light.h
        opennurbs_line.h
        opennurbs_linecurve.h
        opennurbs_linestyle.h
        opennurbs_linetype.h
        opennurbs_locale.h
        opennurbs_lock.h
        opennurbs_lookup.h
        opennurbs_mapchan.h
        opennurbs_material.h
        opennurbs_math.h
        opennurbs_matrix.h
        opennurbs_md5.h
        opennurbs_memory.h
        opennurbs_mesh.h
        opennurbs_model_component.h
        opennurbs_model_geometry.h
        opennurbs_nurbscurve.h
        opennurbs_nurbssurface.h
        opennurbs_object.h
        opennurbs_object_history.h
        opennurbs_objref.h
        opennurbs_offsetsurface.h
        opennurbs_optimize.h
        opennurbs_parse.h
        opennurbs_photogrammetry.h
        opennurbs_plane.h
        opennurbs_planesurface.h
        opennurbs_pluginlist.h
        opennurbs_point.h
        opennurbs_pointcloud.h
        opennurbs_pointgeometry.h
        opennurbs_pointgrid.h
        opennurbs_polycurve.h
        opennurbs_polyedgecurve.h
        opennurbs_polyline.h
        opennurbs_polylinecurve.h
        opennurbs_private_wrap_defs.h
        opennurbs_progress_reporter.h
        opennurbs_qsort_template.h
        opennurbs_quaternion.h
        opennurbs_rand.h
        opennurbs_rendering.h
        opennurbs_revsurface.h
        opennurbs_rtree.h
        opennurbs_sha1.h
        opennurbs_sphere.h
        opennurbs_std_string.h
        opennurbs_string.h
        opennurbs_string_value.h
        opennurbs_subd.h
        opennurbs_subd_data.h
        opennurbs_sumsurface.h
        opennurbs_surface.h
        opennurbs_surfaceproxy.h
        opennurbs_system.h
        opennurbs_system_compiler.h
        opennurbs_system_runtime.h
        opennurbs_terminator.h
        opennurbs_text.h
        opennurbs_text_style.h
        opennurbs_textcontext.h
        opennurbs_textglyph.h
        opennurbs_textiterator.h
        opennurbs_textlog.h
        opennurbs_textobject.h
        opennurbs_textrun.h
        opennurbs_texture.h
        opennurbs_texture_mapping.h
        opennurbs_topology.h
        opennurbs_torus.h
        opennurbs_unicode.h
        opennurbs_userdata.h
        opennurbs_uuid.h
        opennurbs_version.h
        opennurbs_version_number.h
        opennurbs_viewport.h
        opennurbs_windows_targetver.h
        opennurbs_wip.h
        opennurbs_workspace.h
        opennurbs_xform.h
        opennurbs_zlib.h
        )

set(ON_SRC
        opennurbs_3dm_attributes.cpp
        opennurbs_3dm_properties.cpp
        opennurbs_3dm_settings.cpp
        opennurbs_annotationbase.cpp
        opennurbs_arc.cpp
        opennurbs_arccurve.cpp
        opennurbs_archive.cpp
        opennurbs_archive_manifest.cpp
        opennurbs_array.cpp
        opennurbs_base32.cpp
        opennurbs_base64.cpp
        opennurbs_beam.cpp
        opennurbs_bezier.cpp
        opennurbs_beziervolume.cpp
        opennurbs_bitmap.cpp
        opennurbs_bounding_box.cpp
        opennurbs_box.cpp
        opennurbs_brep.cpp
        opennurbs_brep_extrude.cpp
        opennurbs_brep_io.cpp
        opennurbs_brep_isvalid.cpp
        opennurbs_brep_region.cpp
        opennurbs_brep_tools.cpp
        opennurbs_brep_v2valid.cpp
        opennurbs_calculator.cpp
        opennurbs_circle.cpp
        opennurbs_color.cpp
        opennurbs_compress.cpp
        opennurbs_compstat.cpp
        opennurbs_cone.cpp
        opennurbs_crc.cpp
        opennurbs_curve.cpp
        opennurbs_curveonsurface.cpp
        opennurbs_curveproxy.cpp
        opennurbs_cylinder.cpp
        opennurbs_date.cpp
        opennurbs_defines.cpp
        opennurbs_detail.cpp
        opennurbs_dimension.cpp
        opennurbs_dimensionformat.cpp
        opennurbs_dimensionstyle.cpp
        opennurbs_ellipse.cpp
        opennurbs_embedded_file.cpp
        opennurbs_error.cpp
        opennurbs_error_message.cpp
        opennurbs_evaluate_nurbs.cpp
        opennurbs_extensions.cpp
        opennurbs_file_utilities.cpp
        opennurbs_font.cpp
        opennurbs_freetype.cpp
        opennurbs_fsp.cpp
        opennurbs_function_list.cpp
        opennurbs_geometry.cpp
        opennurbs_group.cpp
        opennurbs_hash_table.cpp
        opennurbs_hatch.cpp
        opennurbs_instance.cpp
        opennurbs_internal_V2_annotation.cpp
        opennurbs_internal_V5_annotation.cpp
        opennurbs_internal_V5_dimstyle.cpp
        opennurbs_internal_Vx_annotation.cpp
        opennurbs_intersect.cpp
        opennurbs_ipoint.cpp
        opennurbs_knot.cpp
        opennurbs_layer.cpp
        opennurbs_leader.cpp
        opennurbs_light.cpp
        opennurbs_line.cpp
        opennurbs_linecurve.cpp
        opennurbs_linetype.cpp
        opennurbs_locale.cpp
        opennurbs_lock.cpp
        opennurbs_lookup.cpp
        opennurbs_material.cpp
        opennurbs_math.cpp
        opennurbs_matrix.cpp
        opennurbs_md5.cpp
        opennurbs_memory_util.cpp
        opennurbs_mesh.cpp
        opennurbs_mesh_ngon.cpp
        opennurbs_mesh_tools.cpp
        opennurbs_mesh_topology.cpp
        opennurbs_model_component.cpp
        opennurbs_model_geometry.cpp
        opennurbs_morph.cpp
        opennurbs_nurbscurve.cpp
        opennurbs_nurbssurface.cpp
        opennurbs_nurbsvolume.cpp
        opennurbs_object.cpp
        opennurbs_object_history.cpp
        opennurbs_objref.cpp
        opennurbs_offsetsurface.cpp
        opennurbs_optimize.cpp
        opennurbs_parse_angle.cpp
        opennurbs_parse_length.cpp
        opennurbs_parse_number.cpp
        opennurbs_parse_point.cpp
        opennurbs_parse_settings.cpp
        opennurbs_photogrammetry.cpp
        opennurbs_plane.cpp
        opennurbs_planesurface.cpp
        opennurbs_pluginlist.cpp
        opennurbs_point.cpp
        opennurbs_pointcloud.cpp
        opennurbs_pointgeometry.cpp
        opennurbs_pointgrid.cpp
        opennurbs_polycurve.cpp
        opennurbs_polyedgecurve.cpp
        opennurbs_polyline.cpp
        opennurbs_polylinecurve.cpp
        opennurbs_precompiledheader.cpp
        opennurbs_progress_reporter.cpp
        opennurbs_public_memory.cpp
        opennurbs_quaternion.cpp
        opennurbs_rand.cpp
        opennurbs_revsurface.cpp
        opennurbs_rtree.cpp
        opennurbs_sha1.cpp
        opennurbs_sort.cpp
        opennurbs_sphere.cpp
        opennurbs_statics.cpp
        opennurbs_std_string_format.cpp
        opennurbs_std_string_utf.cpp
        opennurbs_string.cpp
        opennurbs_string_compare.cpp
        opennurbs_string_format.cpp
        opennurbs_string_scan.cpp
        opennurbs_string_values.cpp
        opennurbs_subd.cpp
        opennurbs_subd_archive.cpp
        opennurbs_subd_copy.cpp
        opennurbs_subd_data.cpp
        opennurbs_subd_eval.cpp
        opennurbs_subd_fragment.cpp
        opennurbs_subd_frommesh.cpp
        opennurbs_subd_heap.cpp
        opennurbs_subd_iter.cpp
        opennurbs_subd_limit.cpp
        opennurbs_subd_matrix.cpp
        opennurbs_subd_mesh.cpp
        opennurbs_subd_ref.cpp
        opennurbs_subd_ring.cpp
        opennurbs_subd_sector.cpp
        opennurbs_sum.cpp
        opennurbs_sumsurface.cpp
        opennurbs_surface.cpp
        opennurbs_surfaceproxy.cpp
        opennurbs_terminator.cpp
        opennurbs_text.cpp
        opennurbs_text_style.cpp
        opennurbs_textcontext.cpp
        opennurbs_textglyph.cpp
        opennurbs_textiterator.cpp
        opennurbs_textlog.cpp
        opennurbs_textobject.cpp
        opennurbs_textrun.cpp
        opennurbs_topology.cpp
        opennurbs_torus.cpp
        opennurbs_unicode.cpp
        opennurbs_unicode_cpsb.cpp
        opennurbs_units.cpp
        opennurbs_userdata.cpp
        opennurbs_userdata_obsolete.cpp
        opennurbs_uuid.cpp
        opennurbs_version.cpp
        opennurbs_version_number.cpp
        opennurbs_viewport.cpp
        opennurbs_workspace.cpp
        opennurbs_wstring.cpp
        opennurbs_xform.cpp
        opennurbs_zlib.cpp
        opennurbs_zlib_memory.cpp
        )

if(${BUILD_SHARED_LIBS})
    add_library(opennurbs SHARED ${ON_SRC} ${ON_HEADERS})
    target_link_libraries(opennurbs zlib freetype)
else()
    add_library(opennurbs STATIC $<TARGET_OBJECTS:zlib> $<TARGET_OBJECTS:freetype> ${ON_SRC} ${ON_HEADERS})
endif()
target_compile_definitions(opennurbs PRIVATE ${ON_GENERAL} ${ON_COMPILE})
