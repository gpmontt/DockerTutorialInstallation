FROM ubuntu:latest

MAINTAINER gpmontt 

COPY ./keyboard /etc/default/keyboard
# dependency
RUN apt-get update && apt-get install -y \
tmux\ 
vi\

# installation java 8 
RUN add-apt-repository -y ppa:webupd8team/java \
apt-get update\
echo "oracle-java8-installer shared/accepted-oracle-license-v1-1 select true" | sudo debconf-set-selections\
apt-get install oracle-java8-installer -y \

#

