INCLUDE_GUARD(GLOBAL)
INCLUDE(cmake/detect_detail.cmake)

# Check Varibles
LIST(APPEND others
	CMAKE_HOST_SYSTEM_NAME
	CMAKE_HOST_SYSTEM_VERSION
	CMAKE_HOST_SYSTEM_PROCESSOR
	CMAKE_CXX_COMPILER_ID
	CMAKE_CXX_COMPILER_VERSION
	CMAKE_C_COMPILER_ID
	CMAKE_C_COMPILER_VERSION
	CMAKE_CXX_BYTE_ORDER
	CMAKE_C_BYTE_ORDER
)

# Check Headers
LIST(APPEND include_files
	"version"
)

IF(${CMAKE_HOST_WIN32})
	LIST(APPEND include_files
		"windows.h"
		"dxgi.h"
		"d3d9.h"
	)
ELSE()
	LIST(APPEND include_files
		"sys/mman.h"
		"sys/resource.h"
		"sys/time.h"
		"sys/uio.h"
		"unistd.h"
	)
ENDIF()

# Check Compiler flags
IF(${MSVC})
	LIST(APPEND compiler_flags
		"/arch:IA32"
		"/arch:SSE"
		"/arch:SSE2"
		"/arch:AVX"
		"/arch:AVX2"
		"/arch:AVX512"
		"/arch:AVX10.1"
	)
ELSE()
	LIST(APPEND compiler_flags
		"-std=c++20"
		"-std=c++23"
		"-std=c++2c"
		"-m32"
		"-m64"
		"-march=armv7"
		"-mthumb"
		"-march=armv8-a"
	)
ENDIF()

# Check Sources
LIST(APPEND source_compiles
	HAVE_CPP_CONSTEXPR_202207L
	"[[
		static_assert(__cpp_constexpr >= 202207L); int main() { return 0; }
	]]"
	
	HAVE_CPP_CONSTEXPR_202211L
	"[[
		static_assert(__cpp_constexpr >= 202211L); int main() { return 0; }
	]]"
	
	HAVE_CPP_CONSTEXPR_202306L
	"[[
		static_assert(__cpp_constexpr >= 202306L); int main() { return 0; }
	]]"
	
	HAVE_CPP_CONSTEXPR_202406L
	"[[
		static_assert(__cpp_constexpr >= 202406L); int main() { return 0; }
	]]"
	
	HAVE_CPP_CONSTEXPR_DYNAMIC_ALLOC
	"[[
		static_assert(__cpp_constexpr_dynamic_alloc >= 201907L); int main() { return 0; }
	]]"
	
	HAVE_CPP_CONSTEXPR_EXCEPTIONS
	"[[#include <version>
		static_assert(__cpp_constexpr_exceptions >= 202411L); int main() { return 0; }
	]]"
	
	HAVE_CPP_CONSTEXPR_IN_DECLTYPE
	"[[#include <version>
		static_assert(__cpp_constexpr_in_decltype >= 201711L); int main() { return 0; }
	]]"
	
	HAVE_CPP_MODULES
	"[[
		static_assert(__cpp_modules >= 201907L); int main() { return 0; }
	]]"
	
	HAVE_CPP_LIB_MODULES
	"[[#include <version>
		static_assert(__cpp_lib_modules >= 201907L); int main() { return 0; }
	]]"
	
	HAVE_CPP_LIB_PRINT
	"[[#include <version>
		static_assert(__cpp_lib_print >= 202207L); int main() { return 0; }
	]]"
)

process_detect(
	COMPILER_FLAGS "${compiler_flags}"
	INCLUDE_FILES "${include_files}"
	SOURCE_COMPILES "${source_compiles}"
	OTHERS "${others}"
)