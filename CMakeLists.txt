CMAKE_MINIMUM_REQUIRED(VERSION 3.30)
ENABLE_TESTING()

PROJECT(main_project)

IF(${CMAKE_CXX_COMPILER_ID} STREQUAL "MSVC")
	SET(CMAKE_REQUIRED_FLAGS /std:c++latest)
ELSE()
	SET(CMAKE_REQUIRED_FLAGS -std=c++2c)
ENDIF()

INCLUDE(CheckCXXSourceCompiles)
SET(CODE "static_assert(__cpp_constexpr >= 202207L); int main() { return 0; }")
check_cxx_source_compiles("${CODE}" HAS__cpp_constexpr_202207L)

SET(CODE "static_assert(__cpp_constexpr_dynamic_alloc >= 201907L); int main() { return 0; }")
check_cxx_source_compiles("${CODE}" HAS__cpp_constexpr_dynamic_alloc)

SET(CODE "static_assert(__cpp_modules >= 201907L); int main() { return 0; }")
check_cxx_source_compiles("${CODE}" HAS__cpp_modules)

SET(CODE "
#include <version>
static_assert(__cpp_lib_modules >= 201907L);
int main() { return 0; }
")
check_cxx_source_compiles("${CODE}" HAS__cpp_lib_modules)

SET(CODE "
#include <version>
static_assert(__cpp_lib_print >= 202207L);
int main() { return 0; }
")
check_cxx_source_compiles("${CODE}" HAS__cpp_lib_print)
UNSET(CMAKE_REQUIRED_FLAGS)

ADD_SUBDIRECTORY("src")

message(STATUS "Generator toolset: ${CMAKE_GENERATOR_TOOLSET}")
message(STATUS "Generator platform: ${CMAKE_GENERATOR_PLATFORM}")
if(CMAKE_GENERATOR MATCHES "Visual Studio")
    message(STATUS "Available VS platforms: ${CMAKE_VS_PLATFORM_NAME}")
endif()