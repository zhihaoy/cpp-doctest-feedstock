cmake -G Ninja ^
  -DCMAKE_INSTALL_PREFIX=%LIBRARY_PREFIX% ^
  -DCMAKE_BUILD_TYPE=Release ^
  -DDOCTEST_WITH_TESTS=OFF ^
  -DDOCTEST_WITH_MAIN_IN_STATIC_LIB=OFF ^
  %SRC_DIR%
if errorlevel 1 exit 1

ninja install
if errorlevel 1 exit 1
