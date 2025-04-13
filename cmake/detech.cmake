message(STATUS "Detecting CPP compiler ID - ${CMAKE_CXX_COMPILER_ID}")
message(STATUS "Detecting C compiler ID - ${CMAKE_C_COMPILER_ID}")
message(STATUS "Detecting CPP byte order - ${CMAKE_CXX_BYTE_ORDER}")
message(STATUS "Detecting C byte order - ${CMAKE_C_BYTE_ORDER}")

include(CheckIncludeFile)
check_include_file("sys/mman.h" HAVE_SYS_MMAN_H)
check_include_file("sys/resource.h" HAVE_SYS_RESOURCE_H)
check_include_file("sys/time.h" HAVE_SYS_TIME_H)
check_include_file("sys/uio.h" HAVE_SYS_UIO_H)
check_include_file("unistd.h" HAVE_UNISTD_H)
check_include_file("windows.h" HAVE_WINDOWS_H)

include(CheckCXXCompilerFlag)

message(DEBUG "CMAKE_REQUIRED_FLAGS: ${CMAKE_REQUIRED_FLAGS}")
IF("${CMAKE_CXX_COMPILER_ID}" STREQUAL "MSVC")
	CHECK_CXX_COMPILER_FLAG("/std:c++latest" HAVE_MSVC_CPP_LATEST)
	CHECK_CXX_COMPILER_FLAG("/arch:IA32" HAVE_MSVC_ARCH_IA32)
	CHECK_CXX_COMPILER_FLAG("/arch:SSE" HAVE_MSVC_ARCH_SSE)
	CHECK_CXX_COMPILER_FLAG("/arch:SSE2" HAVE_MSVC_ARCH_SSE2)
	CHECK_CXX_COMPILER_FLAG("/arch:AVX" HAVE_MSVC_ARCH_AVX)
	CHECK_CXX_COMPILER_FLAG("/arch:AVX2" HAVE_MSVC_ARCH_AVX2)
	CHECK_CXX_COMPILER_FLAG("/arch:AVX512" HAVE_MSVC_ARCH_AVX512)
	CHECK_CXX_COMPILER_FLAG("/arch:AVX10.1" HAVE_MSVC_ARCH_AVX10.1)
	SET(CMAKE_REQUIRED_FLAGS "/std:c++latest")
	message(DEBUG "CMAKE_REQUIRED_FLAGS: ${CMAKE_REQUIRED_FLAGS}")
ELSE()
	CHECK_CXX_COMPILER_FLAG("-std=c++20" HAVE_CLANG_CPP_20)
	CHECK_CXX_COMPILER_FLAG("-std=c++23" HAVE_CLANG_CPP_23)
	CHECK_CXX_COMPILER_FLAG("-std=c++2c" HAVE_CLANG_CPP_2C)
	CHECK_CXX_COMPILER_FLAG("-m32" HAVE_CLANG_M32)
	CHECK_CXX_COMPILER_FLAG("-m64" HAVE_CLANG_M64)
	CHECK_CXX_COMPILER_FLAG("-march=armv7" HAVE_CLANG_ARMV7)
	CHECK_CXX_COMPILER_FLAG("-mthumb" HAVE_CLANG_MTHUMB)
	CHECK_CXX_COMPILER_FLAG("-march=armv8-a" HAVE_CLANG_ARMV8_A)
	IF(${HAVE_CLANG_CPP_2C})
		SET(CMAKE_REQUIRED_FLAGS "-std=c++2c")
	ELSEIF(${HAVE_CLANG_CPP_23})
		SET(CMAKE_REQUIRED_FLAGS "-std=c++23")
	ELSE()
		SET(CMAKE_REQUIRED_FLAGS "-std=c++20")
	ENDIF()
	message(DEBUG "CMAKE_REQUIRED_FLAGS: ${CMAKE_REQUIRED_FLAGS}")
ENDIF()

INCLUDE(CheckCXXSourceCompiles)
SET(CODE "static_assert(__cpp_constexpr >= 202207L); int main() { return 0; }")
check_cxx_source_compiles("${CODE}" HAS__cpp_constexpr_202207L)

SET(CODE "static_assert(__cpp_constexpr_dynamic_alloc >= 201907L); int main() { return 0; }")
check_cxx_source_compiles("${CODE}" HAS__cpp_constexpr_dynamic_alloc)

SET(CODE "static_assert(__cpp_modules >= 201907L); int main() { return 0; }")
check_cxx_source_compiles("${CODE}" HAS__cpp_modules)

SET(CODE "#include <version>
static_assert(__cpp_lib_modules >= 201907L);
int main() { return 0; }
")
check_cxx_source_compiles("${CODE}" HAS__cpp_lib_modules)

SET(CODE "#include <version>
static_assert(__cpp_lib_print >= 202207L);
int main() { return 0; }
")
check_cxx_source_compiles("${CODE}" HAS__cpp_lib_print)
UNSET(CMAKE_REQUIRED_FLAGS)

SET(pwsh_json [[
{
	"constexpr_202207L": "",
	"constexpr_dynamic_alloc": "",
	"modules": "",
	"lib_modules": "",
	"lib_print": ""
}
]])

STRING(JSON pwsh_json SET "${pwsh_json}" "constexpr_202207L" "${HAS__cpp_constexpr_202207L}")
STRING(JSON pwsh_json SET "${pwsh_json}" "constexpr_dynamic_alloc" "${HAS__cpp_constexpr_dynamic_alloc}")
STRING(JSON pwsh_json SET "${pwsh_json}" "modules" "${HAS__cpp_modules}")
STRING(JSON pwsh_json SET "${pwsh_json}" "lib_modules" "${HAS__cpp_lib_modules}")
STRING(JSON pwsh_json SET "${pwsh_json}" "lib_print" "${HAS__cpp_lib_print}")

FILE(WRITE "${CMAKE_SOURCE_DIR}/build/cmake_detech.log" "${pwsh_json}")
