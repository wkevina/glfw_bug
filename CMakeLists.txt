cmake_minimum_required(VERSION 3.8)

set(CMAKE_VERBOSE_MAKEFILE ON)

cmake_policy(SET CMP0054 NEW)
cmake_policy(SET CMP0042 NEW)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

#if(APPLE)
#  set(CMAKE_MACOSX_RPATH ON)
#endif(APPLE)

set(CMAKE_POSITION_INDEPENDENT_CODE ON)

include(cmake/HunterGate.cmake)

HunterGate(
        URL "https://github.com/ruslo/hunter/archive/v0.19.232.tar.gz"
        SHA1 "a412c45fe4c5a72fed386f62dd8d753bd4fd3d11"
        LOCAL
)

project(glfw_bug)

set(HUNTER_BUILD_SHARED_LIBS ON)
set(BUILD_SHARED_LIBS ON)

hunter_add_package(GTest)
hunter_add_package(glew)
hunter_add_package(glfw)
hunter_add_package(glm)
hunter_add_package(PNG)
#hunter_add_package(Box2D)

find_package(GTest CONFIG REQUIRED)
find_package(glew CONFIG REQUIRED)
find_package(glfw3 CONFIG REQUIRED)
find_package(glm CONFIG REQUIRED)
find_package(PNG CONFIG REQUIRED)
#find_package(Box2D CONFIG REQUIRED)

add_subdirectory(src)
#add_subdirectory(pixel)
