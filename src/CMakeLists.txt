project(glfw_bug_sub CXX)

add_executable(glfw_bug_main main.cpp)
add_library(glfw_bug lib.h lib.cpp)

target_link_libraries(glfw_bug PUBLIC glfw glew::glew glm)
target_link_libraries(glfw_bug_main PUBLIC glfw_bug)
