qt_add_library(views STATIC
    mainwindow.cpp mainwindow.hpp mainwindow.ui
)

target_link_libraries(views PRIVATE Qt6::Widgets)
target_include_directories(views INTERFACE ${CMAKE_CURRENT_SOURCE_DIR})
