mkdir build
cd build

:: Configure.
cmake -G "NMake Makefiles" -D CMAKE_INSTALL_PREFIX=%PREFIX% .
if errorlevel 1 exit 1

:: Build.
nmake
if errorlevel 1 exit 1

:: Install.
nmake install
if errorlevel 1 exit 1
