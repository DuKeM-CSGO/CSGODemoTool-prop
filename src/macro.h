#pragma once

#if defined(_MSC_VER)
    #define COMPILER_MSVC 1
#elif defined(__clang__)
    #define COMPILER_CLANG 1
#elif defined(__GNUC__)
    #define COMPILER_GCC 1
#else
    #define COMPILER_UNKNOWN 1
#endif