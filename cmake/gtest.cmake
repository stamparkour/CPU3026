#assumes include(FetchContent)

message("importing gtest...")
FetchContent_Declare(
  googletest
  #GIT_REPOSITORY https://github.com/google/googletest.git
  #GIT_TAG 7c3b4d54e3294990d9c3de583fccff97116efb6b
  URL https://github.com/google/googletest/releases/download/v1.17.0/googletest-1.17.0.tar.gz
  DOWNLOAD_EXTRACT_TIMESTAMP
)
set(gtest_force_shared_crt ON CACHE BOOL "" FORCE)
FetchContent_MakeAvailable(googletest)
message("gtest found!")
