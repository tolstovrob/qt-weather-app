cmake_minimum_required(VERSION 3.16)
project(QtWeatherApp LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 REQUIRED COMPONENTS Core Gui Widgets Quick)
qt_standard_project_setup()

add_subdirectory(src/models)
add_subdirectory(src/views)
add_subdirectory(src/controllers)
add_subdirectory(src/app)
