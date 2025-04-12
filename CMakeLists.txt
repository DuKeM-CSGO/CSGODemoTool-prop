CMAKE_MINIMUM_REQUIRED(VERSION 3.30)

PROJECT(main_project)

ENABLE_TESTING()

ADD_SUBDIRECTORY("src")

message(STATUS "Generator toolset: ${CMAKE_GENERATOR_TOOLSET}")
message(STATUS "Generator platform: ${CMAKE_GENERATOR_PLATFORM}")
if(CMAKE_GENERATOR MATCHES "Visual Studio")
    message(STATUS "Available VS platforms: ${CMAKE_VS_PLATFORM_NAME}")
endif()