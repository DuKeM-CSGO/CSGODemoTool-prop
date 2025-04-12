#pragma once
#include <version>

#if __cplusplus < 202002L
#error "C++20 is unavailable"
#elif __cpp_lib_modules < 202302L
#error "C++23 is unavailable"
#endif

#if defined(_MSC_VER)
    #define COMPILER_MSVC 1
#elif defined(__clang__)
    #define COMPILER_CLANG 1
#elif defined(__GNUC__)
    #define COMPILER_GCC 1
#else
    #define COMPILER_UNKNOWN 1
#endif