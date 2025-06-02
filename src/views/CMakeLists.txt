qt6_add_resources(QML_RESOURCES qml/qml.qrc)

qt_add_library(views STATIC
    mainwindow.cpp
    mainwindow.hpp
    mainwindow.ui
    ${QML_RESOURCES}   )

target_link_libraries(views PRIVATE Qt6::Widgets Qt6::Quick)

target_include_directories(views INTERFACE ${CMAKE_CURRENT_SOURCE_DIR})
