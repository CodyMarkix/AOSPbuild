FROM ubuntu:focal

# Getting ALL the dependencies
RUN apt update && apt install -y \
	python2 \
	git-core \
	gnupg \
	flex \
	bison \
	gperf \
	build-essential \
	zip \
	curl \
	zlib1g-dev \
	gcc-multilib \
	g++-multilib \
	libc6-dev-i386 \
	lib32ncurses5-dev \
	x11proto-core-dev \
	libx11-dev \
	lib32z-dev \
	libgl1-mesa-dev \
	libxml2-utils \
	xsltproc \
	unzip \
	python2.7 \
	python-pip \
	python3-pip \
	android-tools-adb \
	android-tools-fastboot \
	repo

# You SHOULD make a folder somewhere on your local machine and then mount it to the image
# via docker-compose.yml or whatever is your cup of tea
RUN mkdir /aosp
ENV WORKING_DIR /aosp

WORKDIR ${WORKING_DIR}
CMD ["bash"]
