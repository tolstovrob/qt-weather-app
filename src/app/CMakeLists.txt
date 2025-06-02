qt_add_executable(QtWeatherApp
    main.cpp
)

target_link_libraries(QtWeatherApp PRIVATE Qt6::Widgets models views controllers)
set_target_properties(QtWeatherApp PROPERTIES WIN32_EXECUTABLE ON MACOSX_BUNDLE ON)
