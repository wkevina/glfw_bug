project(glfw_bug_sub CXX)

add_executable(main main.cpp)
add_library(glfw_bug lib.h lib.cpp)

target_link_libraries(main PUBLIC glfw glew::glew)
target_link_libraries(glfw_bug PUBLIC glfw glew::glew)
