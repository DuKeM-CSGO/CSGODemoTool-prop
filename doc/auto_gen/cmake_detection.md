## CMake Detection
<details open>

<summary>C++ Features</summary>



| Name | linux_x64_clang_debug | linux_x64_gcc_debug | macos_arm64_clang_debug | macos_arm64_gcc_debug | windows_x64_clang_debug | windows_x64_gcc_debug | windows_x64_msvc_debug |
|:---- |:---------------------:|:-------------------:|:-----------------------:|:---------------------:|:-----------------------:|:---------------------:|:----------------------:|
| __cpp_constexpr_202207L | :heavy_check_mark: | :heavy_check_mark: | :x: | :x: | :heavy_check_mark: | :x: | :x: |
| __cpp_constexpr_202211L | :heavy_check_mark: | :heavy_check_mark: | :x: | :x: | :heavy_check_mark: | :x: | :x: |
| __cpp_constexpr_202306L | :heavy_check_mark: | :x: | :x: | :x: | :heavy_check_mark: | :x: | :x: |
| __cpp_constexpr_202406L | :x: | :x: | :x: | :x: | :x: | :x: | :x: |
| __cpp_constexpr_dynamic_alloc | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: |
| __cpp_constexpr_exceptions | :x: | :x: | :x: | :x: | :x: | :x: | :x: |
| __cpp_constexpr_in_decltype | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: | :x: |
| __cpp_lib_modules | :x: | :x: | :x: | :x: | :x: | :x: | :heavy_check_mark: |
| __cpp_lib_print | :heavy_check_mark: | :x: | :x: | :x: | :heavy_check_mark: | :x: | :heavy_check_mark: |
| __cpp_modules | :x: | :x: | :x: | :x: | :x: | :x: | :heavy_check_mark: |


</details>

<details open>

<summary>CMake Variables</summary>



| Name | linux_x64_clang_debug | linux_x64_gcc_debug | macos_arm64_clang_debug | macos_arm64_gcc_debug | windows_x64_clang_debug | windows_x64_gcc_debug | windows_x64_msvc_debug |
|:---- |:---------------------:|:-------------------:|:-----------------------:|:---------------------:|:-----------------------:|:---------------------:|:----------------------:|
| CMAKE_C_BYTE_ORDER | LITTLE_ENDIAN | LITTLE_ENDIAN | LITTLE_ENDIAN | LITTLE_ENDIAN | LITTLE_ENDIAN | LITTLE_ENDIAN | LITTLE_ENDIAN |
| CMAKE_C_COMPILER_ID | Clang | GNU | AppleClang | AppleClang | Clang | GNU | MSVC |
| CMAKE_CXX_BYTE_ORDER | LITTLE_ENDIAN | LITTLE_ENDIAN | LITTLE_ENDIAN | LITTLE_ENDIAN | LITTLE_ENDIAN | LITTLE_ENDIAN | LITTLE_ENDIAN |
| CMAKE_CXX_COMPILER_ID | Clang | GNU | AppleClang | AppleClang | Clang | GNU | MSVC |
| CMAKE_HOST_SYSTEM_NAME | Linux | Linux | Darwin | Darwin | Windows | Windows | Windows |
| CMAKE_HOST_SYSTEM_PROCESSOR | x86_64 | x86_64 | arm64 | arm64 | AMD64 | AMD64 | AMD64 |
| CMAKE_HOST_SYSTEM_VERSION | 6.11.0-1012-azure | 6.11.0-1012-azure | 23.6.0 | 23.6.0 | 10.0.20348 | 10.0.20348 | 10.0.20348 |


</details>

<details open>

<summary>Compiler Flags</summary>



| Name | linux_x64_clang_debug | linux_x64_gcc_debug | macos_arm64_clang_debug | macos_arm64_gcc_debug | windows_x64_clang_debug | windows_x64_gcc_debug | windows_x64_msvc_debug |
|:---- |:---------------------:|:-------------------:|:-----------------------:|:---------------------:|:-----------------------:|:---------------------:|:----------------------:|
| HAVE_CLANG_M32 | :x: | :x: | :heavy_check_mark: | :heavy_check_mark: | :x: | :x: | :wavy_dash: |
| HAVE_CLANG_M64 | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: | :wavy_dash: |
| HAVE_CLANG_MARCH_ARMV7 | :x: | :x: | :x: | :x: | :x: | :x: | :wavy_dash: |
| HAVE_CLANG_MARCH_ARMV8_A | :x: | :x: | :heavy_check_mark: | :heavy_check_mark: | :x: | :x: | :wavy_dash: |
| HAVE_CLANG_MTHUMB | :heavy_check_mark: | :x: | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: | :x: | :wavy_dash: |
| HAVE_CLANG_STD_CPP_20 | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: | :wavy_dash: |
| HAVE_CLANG_STD_CPP_23 | :heavy_check_mark: | :heavy_check_mark: | :x: | :x: | :heavy_check_mark: | :heavy_check_mark: | :wavy_dash: |
| HAVE_CLANG_STD_CPP_2C | :heavy_check_mark: | :x: | :x: | :x: | :heavy_check_mark: | :x: | :wavy_dash: |
| HAVE_MSVC_ARCH_AVX | :wavy_dash: | :wavy_dash: | :wavy_dash: | :wavy_dash: | :wavy_dash: | :wavy_dash: | :heavy_check_mark: |
| HAVE_MSVC_ARCH_AVX10_1 | :wavy_dash: | :wavy_dash: | :wavy_dash: | :wavy_dash: | :wavy_dash: | :wavy_dash: | :heavy_check_mark: |
| HAVE_MSVC_ARCH_AVX2 | :wavy_dash: | :wavy_dash: | :wavy_dash: | :wavy_dash: | :wavy_dash: | :wavy_dash: | :heavy_check_mark: |
| HAVE_MSVC_ARCH_AVX512 | :wavy_dash: | :wavy_dash: | :wavy_dash: | :wavy_dash: | :wavy_dash: | :wavy_dash: | :heavy_check_mark: |
| HAVE_MSVC_ARCH_IA32 | :wavy_dash: | :wavy_dash: | :wavy_dash: | :wavy_dash: | :wavy_dash: | :wavy_dash: | :x: |
| HAVE_MSVC_ARCH_SSE | :wavy_dash: | :wavy_dash: | :wavy_dash: | :wavy_dash: | :wavy_dash: | :wavy_dash: | :x: |
| HAVE_MSVC_ARCH_SSE2 | :wavy_dash: | :wavy_dash: | :wavy_dash: | :wavy_dash: | :wavy_dash: | :wavy_dash: | :heavy_check_mark: |


</details>

<details open>

<summary>Headers</summary>



| Name | linux_x64_clang_debug | linux_x64_gcc_debug | macos_arm64_clang_debug | macos_arm64_gcc_debug | windows_x64_clang_debug | windows_x64_gcc_debug | windows_x64_msvc_debug |
|:---- |:---------------------:|:-------------------:|:-----------------------:|:---------------------:|:-----------------------:|:---------------------:|:----------------------:|
| HAVE_D3D9_H | :wavy_dash: | :wavy_dash: | :wavy_dash: | :wavy_dash: | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: |
| HAVE_DXGI_H | :wavy_dash: | :wavy_dash: | :wavy_dash: | :wavy_dash: | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: |
| HAVE_SYS_MMAN_H | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: | :wavy_dash: | :wavy_dash: | :wavy_dash: |
| HAVE_SYS_RESOURCE_H | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: | :wavy_dash: | :wavy_dash: | :wavy_dash: |
| HAVE_SYS_TIME_H | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: | :wavy_dash: | :wavy_dash: | :wavy_dash: |
| HAVE_SYS_UIO_H | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: | :wavy_dash: | :wavy_dash: | :wavy_dash: |
| HAVE_UNISTD_H | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: | :wavy_dash: | :wavy_dash: | :wavy_dash: |
| HAVE_VERSION | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: |
| HAVE_WINDOWS_H | :wavy_dash: | :wavy_dash: | :wavy_dash: | :wavy_dash: | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: |


</details>

*Last updated: UTC 2025-04-23 13:11:25Z*
