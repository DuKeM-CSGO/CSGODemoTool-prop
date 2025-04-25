# Readme
[![CI](https://github.com/DuKeM-CSGO/CSGODemoTool-prop/actions/workflows/ci.yaml/badge.svg)](https://github.com/DuKeM-CSGO/CSGODemoTool-prop/actions/workflows/ci.yaml)
[![Track CS2](https://github.com/DuKeM-CSGO/CSGODemoTool-prop/actions/workflows/track_cs2.yaml/badge.svg)](https://github.com/DuKeM-CSGO/CSGODemoTool-prop/actions/workflows/track_cs2.yaml)
[![Update Readme](https://github.com/DuKeM-CSGO/CSGODemoTool-prop/actions/workflows/update_readme.yaml/badge.svg)](https://github.com/DuKeM-CSGO/CSGODemoTool-prop/actions/workflows/update_readme.yaml)
[![](https://img.shields.io/github/last-commit/DuKeM-CSGO/CSGODemoTool-prop?path=doc%2Fauto_gen%2Fcmake_detection.md&logo=cmake&label=CMake%20Detection)](#cmake-detection)
[![](https://img.shields.io/github/last-commit/DuKeM-CSGO/CSGODemoTool-prop?path=doc%2Fauto_gen%2Fthird_party_repo.md&logo=github&label=Third-party%20Repos)](#third-party-repos)
## CMake Detection
<details open>

<summary>C++ Features</summary>



| Name | linux_x64_clang | linux_x64_gcc | macos_arm64_clang | macos_arm64_gcc | windows_x64_clang | windows_x64_gcc | windows_x64_msvc |
|:---- |:---------------:|:-------------:|:-----------------:|:---------------:|:-----------------:|:---------------:|:----------------:|
| __cpp_constexpr_202207L | :heavy_check_mark: | :heavy_check_mark: | :x: | :heavy_check_mark: | :heavy_check_mark: | :x: | :x: |
| __cpp_constexpr_202211L | :heavy_check_mark: | :heavy_check_mark: | :x: | :heavy_check_mark: | :heavy_check_mark: | :x: | :x: |
| __cpp_constexpr_202306L | :heavy_check_mark: | :x: | :x: | :heavy_check_mark: | :heavy_check_mark: | :x: | :x: |
| __cpp_constexpr_202406L | :x: | :x: | :x: | :x: | :x: | :x: | :x: |
| __cpp_constexpr_dynamic_alloc | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: |
| __cpp_constexpr_exceptions | :x: | :x: | :x: | :x: | :x: | :x: | :x: |
| __cpp_constexpr_in_decltype | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: | :x: |
| __cpp_lib_modules | :x: | :x: | :x: | :x: | :x: | :x: | :heavy_check_mark: |
| __cpp_lib_print | :heavy_check_mark: | :x: | :x: | :heavy_check_mark: | :heavy_check_mark: | :x: | :heavy_check_mark: |
| __cpp_modules | :x: | :x: | :x: | :x: | :x: | :x: | :heavy_check_mark: |


</details>

<details open>

<summary>CMake Variables</summary>



| Name | linux_x64_clang | linux_x64_gcc | macos_arm64_clang | macos_arm64_gcc | windows_x64_clang | windows_x64_gcc | windows_x64_msvc |
|:---- |:---------------:|:-------------:|:-----------------:|:---------------:|:-----------------:|:---------------:|:----------------:|
| CMAKE_C_BYTE_ORDER | LITTLE_ENDIAN | LITTLE_ENDIAN | LITTLE_ENDIAN | LITTLE_ENDIAN | LITTLE_ENDIAN | LITTLE_ENDIAN | LITTLE_ENDIAN |
| CMAKE_C_COMPILER_ID | Clang | GNU | Clang | GNU | Clang | GNU | MSVC |
| CMAKE_C_COMPILER_VERSION | 18.1.3 | 13.3.0 | 15.0.7 | 14.2.0 | 18.1.8 | 12.2.0 | 19.43.34808.0 |
| CMAKE_CXX_BYTE_ORDER | LITTLE_ENDIAN | LITTLE_ENDIAN | LITTLE_ENDIAN | LITTLE_ENDIAN | LITTLE_ENDIAN | LITTLE_ENDIAN | LITTLE_ENDIAN |
| CMAKE_CXX_COMPILER_ID | Clang | GNU | Clang | GNU | Clang | GNU | MSVC |
| CMAKE_CXX_COMPILER_VERSION | 18.1.3 | 13.3.0 | 15.0.7 | 14.2.0 | 18.1.8 | 12.2.0 | 19.43.34808.0 |
| CMAKE_GENERATOR | Ninja Multi-Config | Ninja Multi-Config | Ninja Multi-Config | Ninja Multi-Config | Ninja Multi-Config | Ninja Multi-Config | Visual Studio 17 2022 |
| CMAKE_HOST_SYSTEM_NAME | Linux | Linux | Darwin | Darwin | Windows | Windows | Windows |
| CMAKE_HOST_SYSTEM_PROCESSOR | x86_64 | x86_64 | arm64 | arm64 | AMD64 | AMD64 | AMD64 |
| CMAKE_HOST_SYSTEM_VERSION | 6.11.0-1012-azure | 6.11.0-1012-azure | 23.6.0 | 23.6.0 | 10.0.20348 | 10.0.20348 | 10.0.20348 |


</details>

<details open>

<summary>Compiler Flags</summary>



| Name | linux_x64_clang | linux_x64_gcc | macos_arm64_clang | macos_arm64_gcc | windows_x64_clang | windows_x64_gcc | windows_x64_msvc |
|:---- |:---------------:|:-------------:|:-----------------:|:---------------:|:-----------------:|:---------------:|:----------------:|
| HAVE_CLANG_M32 | :x: | :x: | :heavy_check_mark: | :x: | :x: | :x: | :wavy_dash: |
| HAVE_CLANG_M64 | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: | :wavy_dash: |
| HAVE_CLANG_MARCH_ARMV7 | :x: | :x: | :x: | :x: | :x: | :x: | :wavy_dash: |
| HAVE_CLANG_MARCH_ARMV8_A | :x: | :x: | :heavy_check_mark: | :heavy_check_mark: | :x: | :x: | :wavy_dash: |
| HAVE_CLANG_MTHUMB | :heavy_check_mark: | :x: | :heavy_check_mark: | :x: | :heavy_check_mark: | :x: | :wavy_dash: |
| HAVE_CLANG_STD_CPP_20 | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: | :wavy_dash: |
| HAVE_CLANG_STD_CPP_23 | :heavy_check_mark: | :heavy_check_mark: | :x: | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: | :wavy_dash: |
| HAVE_CLANG_STD_CPP_2C | :heavy_check_mark: | :x: | :x: | :heavy_check_mark: | :heavy_check_mark: | :x: | :wavy_dash: |
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



| Name | linux_x64_clang | linux_x64_gcc | macos_arm64_clang | macos_arm64_gcc | windows_x64_clang | windows_x64_gcc | windows_x64_msvc |
|:---- |:---------------:|:-------------:|:-----------------:|:---------------:|:-----------------:|:---------------:|:----------------:|
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

*Last updated: UTC 2025-04-24 07:44:16Z*


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


*Last updated: UTC 2025-04-25 01:39:48Z*



