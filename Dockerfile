FROM ubuntu:latest

MAINTAINER gpmontt 

#COPY ./keyboard /etc/default/keyboard
# dependency
RUN apt-get update && apt-get install -y \
tmux

# installation java 8 
RUN add-apt-repository -y ppa:webupd8team/java \
RUN apt-get update
CMD echo "oracle-java8-installer shared/accepted-oracle-license-v1-1 select true" |  debconf-set-selections 
RUN apt-get install oracle-java8-installer -y 

#

