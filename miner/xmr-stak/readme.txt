
cd to your unzipped source code directory

execute the following commands (NOTE: path to VS2017 can be different)

"C:\Program Files (x86)\Microsoft Visual Studio\2017\Community\Common7\Tools\VsMSBuildCmd.bat"

set CMAKE_PREFIX_PATH=C:\xmr-stak-dep\hwloc;C:\xmr-stak-dep\libmicrohttpd;C:\xmr-stak-dep\openssl

mkdir build

cd build

cmake -G "Visual Studio 15 2017 Win64" -T v141,host=x64 .. -DCUDA_ARCH=30

cmake --build . --config Release --target install

cd bin\Release

copy C:\xmr-stak-dep\openssl\bin\* .

