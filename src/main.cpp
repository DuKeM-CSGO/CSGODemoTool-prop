#include <iostream>
#include "macro.h"

extern bool test_fn();

int main() {
#if COMPILER_MSVC
    //std::println("MSVC Version: {}", _MSC_VER);
    std::cout << "Full Version: " << _MSC_FULL_VER << '\n';
#elif COMPILER_GCC
    std::cout << "GCC Version: " << __GNUC__ << '.' << __GNUC_MINOR__ << '.' << __GNUC_PATCHLEVEL__ << '\n';
    //std::println("Full Version: {}", __VERSION__);
#elif COMPILER_CLANG
    std::cout << "Clang Version: " << __clang_major__ << '.' << __clang_minor__ << '.' << __clang_patchlevel__ << '\n';
    //std::println("Full Version: {}", __clang_version__);
#else
    std::cout << "Unknown Compiler\n";
#endif
	std::cout << test_fn() << '\n';
    return 0;
}