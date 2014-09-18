unzip opencv-2.4.9.zip
rm opencv-2.4.9.zip
mkdir -p opencv-2.4.9/release
cd opencv-2.4.9/release
cmake -D CMAKE_BUILD_TYPE=RELEASE -D CMAKE_INSTALL_PREFIX=/usr/local -D BUILD_PYTHON_SUPPORT=ON -D WITH_XINE=ON -D WITH_TBB=ON ..
make && make install
cd /
rm -rf opencv-2.4.9
