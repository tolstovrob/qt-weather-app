qt_add_library(models STATIC

)

target_link_libraries(models PRIVATE Qt6::Core)
target_include_directories(models INTERFACE ${CMAKE_CURRENT_SOURCE_DIR})
