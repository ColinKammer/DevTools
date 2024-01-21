include(FetchContent)

FetchContent_Declare(
  cpphttplib
  GIT_REPOSITORY https://github.com/yhirose/cpp-httplib
  GIT_TAG        cbca63f #v0.14.3 tagged on 22.12.2023
)

FetchContent_MakeAvailable(cpphttplib)

SET (HTTP_LIBRARY ${cpphttplib_SOURCE_DIR})
message("HttpLibrary is cpp-httplib")