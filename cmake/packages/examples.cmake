add_executable(example_read_exe example_read/example_read.cpp)
target_compile_definitions(example_read_exe PRIVATE ${ON_GENERAL})
target_link_libraries(example_read_exe opennurbs uuid pthread c++abi)

add_executable(example_brep_exe example_brep/example_brep.cpp)
target_link_libraries(example_brep_exe opennurbs uuid pthread c++abi)
target_compile_definitions(example_brep_exe PRIVATE ${ON_GENERAL})

add_executable(example_convert_exe example_convert/example_convert.cpp)
target_link_libraries(example_convert_exe opennurbs uuid pthread c++abi)
target_compile_definitions(example_convert_exe PRIVATE ${ON_GENERAL})

add_executable(example_write_exe example_write/example_write.cpp example_userdata/example_ud.h example_userdata/example_ud.cpp)
target_link_libraries(example_write_exe opennurbs uuid pthread c++abi)
target_compile_definitions(example_write_exe PRIVATE ${ON_GENERAL})

add_executable(example_userdata_exe example_userdata/example_userdata.cpp example_userdata/example_ud.h example_userdata/example_ud.cpp)
target_link_libraries(example_userdata_exe opennurbs uuid pthread c++abi)
target_compile_definitions(example_userdata_exe PRIVATE ${ON_GENERAL})

add_executable(example_roundtrip_exe example_roundtrip/example_roundtrip.cpp)
target_link_libraries(example_roundtrip_exe opennurbs uuid pthread c++abi)
target_compile_definitions(example_roundtrip_exe PRIVATE ${ON_GENERAL})