FROM ubuntu:16.04

## Put everything in some subfolder
WORKDIR "/pngtoklg"

## Container's mount point for the host's input/output folder
VOLUME "/input-output"


RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        module-init-tools \
        build-essential \
        ca-certificates \
        wget \
        git \
		cmake \
		libboost-all-dev \
		zlib1g-dev \
		libpng-dev \
		libjpeg-dev \
		unzip && \
	wget http://sourceforge.net/projects/opencvlibrary/files/opencv-unix/2.4.9/opencv-2.4.9.zip && \
    unzip opencv-2.4.9.zip && \
    cd opencv-2.4.9 && \
    mkdir build && \
    cd build && \
    cmake -D BUILD_NEW_PYTHON_SUPPORT=OFF -D WITH_OPENCL=OFF -D WITH_OPENMP=ON -D INSTALL_C_EXAMPLES=OFF -D BUILD_DOCS=OFF -D BUILD_EXAMPLES=OFF -D WITH_QT=OFF -D WITH_OPENGL=OFF -D WITH_VTK=OFF -D BUILD_PERF_TESTS=OFF -D BUILD_TESTS=OFF -D WITH_CUDA=OFF -D BUILD_opencv_gpu=OFF .. && \
    make -j8 && \
    make install && \
    cd /pngtoklg && \
    git clone https://github.com/HTLife/png_to_klg.git && \
    cd png_to_klg && \
    mkdir build && \
    cd build && \
    cmake .. && \
    make -j4
    



		
		
