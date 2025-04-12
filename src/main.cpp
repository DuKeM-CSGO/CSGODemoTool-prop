#include "macro.h"

#if __cpp_lib_print < 202207L
#error "cpp_lib_print is unavailable"
#endif

#include <print>

int main() {
#if COMPILER_MSVC
    //std::println("MSVC Version: {}", _MSC_VER);
    std::println("Full Version: {}", _MSC_FULL_VER);
#elif COMPILER_GCC
    std::println("GCC Version: {}.{}.{}", __GNUC__, __GNUC_MINOR__, __GNUC_PATCHLEVEL__);
    //std::println("Full Version: {}", __VERSION__);
#elif COMPILER_CLANG
    std::println("Clang Version: {}.{}.{}", __clang_major__, __clang_minor__, __clang_patchlevel__);
    //std::println("Full Version: {}", __clang_version__);
#else
    std::println("Unknown Compiler";
#endif

    return 0;
}