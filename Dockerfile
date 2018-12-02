FROM ubuntu:latest

MAINTAINER gpmontt 

#COPY ./keyboard /etc/default/keyboard
# dependency
RUN apt-get update && apt-get install -y tmux
#

