project(re2c)

cmake_minimum_required(VERSION 2.8)

add_definitions(
	-DPACKAGE_VERSION="@PACKAGE_VERSION"
	-DHAVE_STRDUP
)

include_directories(
	${CMAKE_CURRENT_SOURCE_DIR}/include
)

add_executable(re2c
	src/main.cc
	src/mbo_getopt.cc
	src/scanner.cc
	src/dfa.cc
	src/translate.cc
	src/code.cc
	src/actions.cc
	src/substr.cc
	src/parser.cc
)
