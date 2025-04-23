# Readme
[![CI](https://github.com/DuKeM-CSGO/CSGODemoTool-prop/actions/workflows/ci.yaml/badge.svg)](https://github.com/DuKeM-CSGO/CSGODemoTool-prop/actions/workflows/ci.yaml)
[![Track CS2](https://github.com/DuKeM-CSGO/CSGODemoTool-prop/actions/workflows/track_cs2.yaml/badge.svg)](https://github.com/DuKeM-CSGO/CSGODemoTool-prop/actions/workflows/track_cs2.yaml)
[![Track CS2](https://github.com/DuKeM-CSGO/CSGODemoTool-prop/actions/workflows/update_readme.yaml/badge.svg)](https://github.com/DuKeM-CSGO/CSGODemoTool-prop/actions/workflows/update_readme.yaml)
## CMake Detection
<details>

<summary>Compiler Flags</summary>



| Name | linux_x64_gcc_debug | linux_x64_clang_debug | macos_arm64_clang_debug | windows_x64_gcc_debug | macos_arm64_gcc_debug | windows_x64_clang_debug |
| ---- | ------------------- | --------------------- | ----------------------- | --------------------- | --------------------- | ----------------------- |
| HAVE_CLANG_M32 | :x: | :x: | :heavy_check_mark: | :x: | :heavy_check_mark: | :x: |
| HAVE_CLANG_M64 | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: |
| HAVE_CLANG_MARCH_ARMV7 | :x: | :x: | :x: | :x: | :x: | :x: |
| HAVE_CLANG_MARCH_ARMV8_A | :x: | :x: | :heavy_check_mark: | :x: | :heavy_check_mark: | :x: |
| HAVE_CLANG_MTHUMB | :x: | :x: | :heavy_check_mark: | :x: | :heavy_check_mark: | :x: |
| HAVE_CLANG_STD_CPP_20 | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: |
| HAVE_CLANG_STD_CPP_23 | :heavy_check_mark: | :heavy_check_mark: | :x: | :heavy_check_mark: | :x: | :heavy_check_mark: |
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

<summary>CMake Variables</summary>



| Name | linux_x64_gcc_debug | linux_x64_clang_debug | macos_arm64_clang_debug | windows_x64_msvc_debug | windows_x64_gcc_debug | macos_arm64_gcc_debug | windows_x64_clang_debug |
| ---- | ------------------- | --------------------- | ----------------------- | ---------------------- | --------------------- | --------------------- | ----------------------- |
| CMAKE_C_BYTE_ORDER | LITTLE_ENDIAN | LITTLE_ENDIAN | LITTLE_ENDIAN | LITTLE_ENDIAN | LITTLE_ENDIAN | LITTLE_ENDIAN | LITTLE_ENDIAN |
| CMAKE_C_COMPILER_ID | GNU | GNU | AppleClang | MSVC | GNU | AppleClang | GNU |
| CMAKE_CXX_BYTE_ORDER | LITTLE_ENDIAN | LITTLE_ENDIAN | LITTLE_ENDIAN | LITTLE_ENDIAN | LITTLE_ENDIAN | LITTLE_ENDIAN | LITTLE_ENDIAN |
| CMAKE_CXX_COMPILER_ID | GNU | GNU | AppleClang | MSVC | GNU | AppleClang | GNU |
| CMAKE_HOST_SYSTEM_NAME | Linux | Linux | Darwin | Windows | Windows | Darwin | Windows |
| CMAKE_HOST_SYSTEM_PROCESSOR | x86_64 | x86_64 | arm64 | AMD64 | AMD64 | arm64 | AMD64 |
| CMAKE_HOST_SYSTEM_VERSION | 6.8.0-1021-azure | 6.8.0-1021-azure | 23.6.0 | 10.0.20348 | 10.0.20348 | 23.6.0 | 10.0.20348 |


</details>

<details>

<summary>Headers</summary>



| Name | windows_x64_msvc_debug | windows_x64_clang_debug | windows_x64_gcc_debug |
| ---- | ---------------------- | ----------------------- | --------------------- |
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

<details>

<summary>C++ Features</summary>



| Name | linux_x64_gcc_debug | linux_x64_clang_debug | macos_arm64_clang_debug | windows_x64_msvc_debug | windows_x64_gcc_debug | macos_arm64_gcc_debug | windows_x64_clang_debug |
| ---- | ------------------- | --------------------- | ----------------------- | ---------------------- | --------------------- | --------------------- | ----------------------- |
| __cpp_constexpr_202207L | :heavy_check_mark: | :heavy_check_mark: | :x: | :x: | :x: | :x: | :x: |
| __cpp_constexpr_202211L | :heavy_check_mark: | :heavy_check_mark: | :x: | :x: | :x: | :x: | :x: |
| __cpp_constexpr_202306L | :x: | :x: | :x: | :x: | :x: | :x: | :x: |
| __cpp_constexpr_202406L | :x: | :x: | :x: | :x: | :x: | :x: | :x: |
| __cpp_constexpr_dynamic_alloc | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: |
| __cpp_constexpr_exceptions | :x: | :x: | :x: | :x: | :x: | :x: | :x: |
| __cpp_constexpr_in_decltype | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: | :x: | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: |
| __cpp_lib_modules | :x: | :x: | :x: | :heavy_check_mark: | :x: | :x: | :x: |
| __cpp_lib_print | :x: | :x: | :x: | :heavy_check_mark: | :x: | :x: | :x: |
| __cpp_modules | :x: | :x: | :x: | :heavy_check_mark: | :x: | :x: | :x: |


</details>

*Last updated: UTC 2025-04-22 13:24:12Z*


## Third-party Repos
| Name | RealName | Version | PublishTime | License |
| ---- | -------- | ------- | ----------- | ------- |
| abseil | abseil/abseil-cpp | 20250127.1 | 03/18/2025 | apache-2.0 |
| cryptopp | weidai11/cryptopp | CRYPTOPP_8_9_0 | 10/01/2023 |  |
| detours | microsoft/Detours | v4.0.1 | 04/16/2018 | mit |
| gperftools | gperftools/gperftools | gperftools-2.16 | 09/25/2024 | bsd-3-clause |
| protobuf | protocolbuffers/protobuf | v30.2 | 03/26/2025 |  |
| snappy | google/snappy | 1.2.2 | 03/26/2025 |  |
| stdexec | NVIDIA/stdexec |  |  | apache-2.0 |
| katana_parser | hackers-painters/katana-parser |  |  | mit |
| nlohmann_json | nlohmann/json | v3.12.0 | 04/11/2025 | mit |
| gametracking_csgo | SteamDatabase/GameTracking-CSGO |  |  |  |
| proxy3 | microsoft/proxy | 3.3.0 | 03/20/2025 | mit |
| microsoft_stl | microsoft/stl | vs-2022-17.13 | 02/16/2025 |  |
| yalantinglibs | alibaba/yalantinglibs | 0.4.0 | 03/11/2025 | apache-2.0 |
| openexr | AcademySoftwareFoundation/openexr | v3.3.3 | 03/24/2025 | bsd-3-clause |


*Last updated: UTC 2025-04-23 01:39:00Z*



