from	ubuntu:13.10

# Ubuntu sides with libav, I side with ffmpeg.
run	echo "deb http://ppa.launchpad.net/jon-severinsson/ffmpeg/ubuntu saucy main" >> /etc/apt/sources.list
run	apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 1DB8ADC1CFCA9579


run	apt-get update
run	apt-get install -y -q wget curl
run	apt-get install -y -q build-essential
run	apt-get install -y -q cmake
run	apt-get install -y -q python2.7 python2.7-dev
run	wget 'https://pypi.python.org/packages/2.7/s/setuptools/setuptools-0.6c11-py2.7.egg' && /bin/sh setuptools-0.6c11-py2.7.egg && rm -f setuptools-0.6c11-py2.7.egg
run	wget 'https://raw.github.com/pypa/pip/master/contrib/get-pip.py' && python2.7 get-pip.py && rm get-pip.py
run	pip install numpy
run pip install scikit-learn
run apt-get install -y -q libatlas-base-dev gfortran
run pip install scipy
run	apt-get install -y -q libavformat-dev libavcodec-dev libavfilter-dev libswscale-dev
run	apt-get install -y -q libjpeg-dev libpng-dev libtiff-dev libjasper-dev zlib1g-dev libopenexr-dev libxine-dev libeigen3-dev libtbb-dev
run wget 'http://sourceforge.net/projects/opencvlibrary/files/opencv-unix/2.4.9/opencv-2.4.9.zip'
run	apt-get install -y -q unzip
add	build_opencv.sh	/build_opencv.sh
run	/bin/sh /build_opencv.sh
run	rm -rf /build_opencv.sh
WORKDIR /labelvision
