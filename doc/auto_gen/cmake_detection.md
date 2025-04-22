## CMake Detection
<details>

<summary>Compiler Flags</summary>



| Name | windows_x64_gcc_debug | windows_x64_clang_debug | linux_x64_clang_debug | linux_x64_gcc_debug | macos_arm64_clang_debug | macos_arm64_gcc_debug |
| ---- | --------------------- | ----------------------- | --------------------- | ------------------- | ----------------------- | --------------------- |
| HAVE_CLANG_M32 | :x: | :x: | :x: | :x: | :heavy_check_mark: | :heavy_check_mark: |
| HAVE_CLANG_M64 | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: |
| HAVE_CLANG_MARCH_ARMV7 | :x: | :x: | :x: | :x: | :x: | :x: |
| HAVE_CLANG_MARCH_ARMV8_A | :x: | :x: | :x: | :x: | :heavy_check_mark: | :heavy_check_mark: |
| HAVE_CLANG_MTHUMB | :x: | :x: | :x: | :x: | :heavy_check_mark: | :heavy_check_mark: |
| HAVE_CLANG_STD_CPP_20 | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: |
| HAVE_CLANG_STD_CPP_23 | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: | :x: | :x: |
| HAVE_CLANG_STD_CPP_2C | :x: | :x: | :x: | :x: | :x: | :x: |
| HAVE_MSVC_ARCH_AVX |  |  |  |  |  |  |
| HAVE_MSVC_ARCH_AVX10_1 |  |  |  |  |  |  |
| HAVE_MSVC_ARCH_AVX2 |  |  |  |  |  |  |
| HAVE_MSVC_ARCH_AVX512 |  |  |  |  |  |  |
| HAVE_MSVC_ARCH_IA32 |  |  |  |  |  |  |
| HAVE_MSVC_ARCH_SSE |  |  |  |  |  |  |
| HAVE_MSVC_ARCH_SSE2 |  |  |  |  |  |  |


</details>

<details>

<summary>C++ Features</summary>



| Name | windows_x64_gcc_debug | windows_x64_clang_debug | linux_x64_clang_debug | windows_x64_msvc_debug | linux_x64_gcc_debug | macos_arm64_clang_debug | macos_arm64_gcc_debug |
| ---- | --------------------- | ----------------------- | --------------------- | ---------------------- | ------------------- | ----------------------- | --------------------- |
| __cpp_constexpr_202207L | :x: | :x: | :heavy_check_mark: | :x: | :heavy_check_mark: | :x: | :x: |
| __cpp_constexpr_202211L | :x: | :x: | :heavy_check_mark: | :x: | :heavy_check_mark: | :x: | :x: |
| __cpp_constexpr_202306L | :x: | :x: | :x: | :x: | :x: | :x: | :x: |
| __cpp_constexpr_202406L | :x: | :x: | :x: | :x: | :x: | :x: | :x: |
| __cpp_constexpr_dynamic_alloc | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: |
| __cpp_constexpr_exceptions | :x: | :x: | :x: | :x: | :x: | :x: | :x: |
| __cpp_constexpr_in_decltype | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: | :x: | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: |
| __cpp_lib_modules | :x: | :x: | :x: | :heavy_check_mark: | :x: | :x: | :x: |
| __cpp_lib_print | :x: | :x: | :x: | :heavy_check_mark: | :x: | :x: | :x: |
| __cpp_modules | :x: | :x: | :x: | :heavy_check_mark: | :x: | :x: | :x: |


</details>

<details>

<summary>CMake Variables</summary>



| Name | windows_x64_gcc_debug | windows_x64_clang_debug | linux_x64_clang_debug | windows_x64_msvc_debug | linux_x64_gcc_debug | macos_arm64_clang_debug | macos_arm64_gcc_debug |
| ---- | --------------------- | ----------------------- | --------------------- | ---------------------- | ------------------- | ----------------------- | --------------------- |
| CMAKE_C_BYTE_ORDER | LITTLE_ENDIAN | LITTLE_ENDIAN | LITTLE_ENDIAN | LITTLE_ENDIAN | LITTLE_ENDIAN | LITTLE_ENDIAN | LITTLE_ENDIAN |
| CMAKE_C_COMPILER_ID | GNU | GNU | GNU | MSVC | GNU | AppleClang | AppleClang |
| CMAKE_CXX_BYTE_ORDER | LITTLE_ENDIAN | LITTLE_ENDIAN | LITTLE_ENDIAN | LITTLE_ENDIAN | LITTLE_ENDIAN | LITTLE_ENDIAN | LITTLE_ENDIAN |
| CMAKE_CXX_COMPILER_ID | GNU | GNU | GNU | MSVC | GNU | AppleClang | AppleClang |
| CMAKE_HOST_SYSTEM_NAME | Windows | Windows | Linux | Windows | Linux | Darwin | Darwin |
| CMAKE_HOST_SYSTEM_PROCESSOR | AMD64 | AMD64 | x86_64 | AMD64 | x86_64 | arm64 | arm64 |
| CMAKE_HOST_SYSTEM_VERSION | 10.0.20348 | 10.0.20348 | 6.11.0-1012-azure | 10.0.20348 | 6.11.0-1012-azure | 23.6.0 | 23.6.0 |


</details>

<details>

<summary>Headers</summary>



| Name | windows_x64_msvc_debug | windows_x64_gcc_debug | windows_x64_clang_debug |
| ---- | ---------------------- | --------------------- | ----------------------- |
| HAVE_D3D9_H | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: |
| HAVE_DXGI_H | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: |
| HAVE_SYS_MMAN_H |  |  |  |
| HAVE_SYS_RESOURCE_H |  |  |  |
| HAVE_SYS_TIME_H |  |  |  |
| HAVE_SYS_UIO_H |  |  |  |
| HAVE_UNISTD_H |  |  |  |
| HAVE_VERSION | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: |
| HAVE_WINDOWS_H | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: |


</details>

*Last updated: UTC 2025-04-22 22:49:07Z*
