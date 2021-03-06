# Best practices for writing Dockerfiles
This document covers recommended best practices and methods for building efficient images.

Docker builds images automatically by reading the instructions from a Dockerfile -- a text file that contains all commands, in order, needed to build a given image. A Dockerfile adheres to a specific format and set of instructions which you can find at Dockerfile reference.

A Docker image consists of read-only layers each of which represents a Dockerfile instruction. The layers are stacked and each one is a delta of the changes from the previous layer. Consider this Dockerfile
```
FROM ubuntu:latest
COPY . /app
RUN make /app
CMD python /app/app.py
```





Each instruction creates one layer:

    FROM creates a layer from the ubuntu:15.04 Docker image.
    COPY adds files from your Docker client’s current directory.
    RUN builds your application with make.
    CMD specifies what command to run within the container.
		
	
When you run an image and generate a container, you add a new writable layer (the “container layer”) on top of the underlying layers. All changes made to the running container, such as writing new files, modifying existing files, and deleting files, are written to this thin writable container layer.

For more on image layers (and how Docker builds and stores images), see About storage drivers.

# Use Docker
 If you  will test the enviroment first, you can download a image 

##Now it's time to download the base image to our server, use the command:
```
docker pull ubuntu
```
##Now you can see all downloaded images by using the command:
```
docker images
```

To view all containers — active and inactive, run docker ps with the -a switch:
```
docker ps -a
```


# Build you image
All info about in your file Docker will be generate. For this you need to run:
```
docker build -t nameofyourimage .
```


# Using Docker HUB  building an image

For push an image to Docker Hub, is necessary specify the username as part of the image name.  For this case you need:
- *username_in_dockerHUB/name_of_project*

the command line is: 
```
$ docker build -t docker pull gpmontt/crosscompilerrpiqt5 bash
```
