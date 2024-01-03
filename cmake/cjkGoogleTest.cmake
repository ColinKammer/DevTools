
include(FetchContent)
FetchContent_Declare(
  googletest
  URL https://github.com/google/googletest/archive/03597a01ee50ed33e9dfd640b249b4be3799d395.zip
)
# For Windows: Prevent overriding the parent project's compiler/linker settings
set(gtest_force_shared_crt ON CACHE BOOL "" FORCE)
FetchContent_MakeAvailable(googletest)

enable_testing()

add_executable(runTests
  ${TEST_SOURCE_FILES}
)
target_link_libraries(runTests
  GTest::gtest_main
  ${TEST_ADDITIONAL_LINK_LIBRARIES}
)

target_include_directories(runTests
  ${TEST_INCLUDE_DIRS}
)

include(GoogleTest)
gtest_discover_tests(runTests)