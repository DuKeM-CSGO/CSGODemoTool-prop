#include "macro.h"

#if __cpp_modules < 201907L
#error "cpp_modules is unavailable"
#elif __cpp_lib_modules < 201907L
#error "cpp_constexpr_dynamic_alloc is unavailable"
#endif

import std;
import std.compat;

static_assert(
    std::addressof(std::cout)
);