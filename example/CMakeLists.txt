project(exampple)

cmake_minimum_required(VERSION 2.8)

include_directories(
	${CMAKE_CURRENT_SOURCE_DIR}/include
)

add_executable(test1
	src/test1.c
)
