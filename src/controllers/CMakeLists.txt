qt_add_library(controllers STATIC

)

target_link_libraries(controllers PRIVATE Qt6::Core models views)
target_include_directories(controllers INTERFACE ${CMAKE_CURRENT_SOURCE_DIR})
