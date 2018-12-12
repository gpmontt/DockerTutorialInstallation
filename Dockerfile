# download the image from docker
FROM ubuntu:18.04

# Author / Maintainer
MAINTAINER Giovanni Perez

# Install usefull packages for project
RUN apt-get update && apt-get install -y \
	build-essential \
	wget \
	git \
	cmake \
	python \
	curl \
	vim \
 && rm -rf /var/lib/apt/lists/*

# add a whatever volume 
ENV name velo  
RUN ls -lah
#CMD ["/bin/sh", "-c", "/qt5pibuilder/build -c"]


