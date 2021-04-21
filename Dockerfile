FROM ubuntu:20.04

WORKDIR /root/workspace

RUN apt-get update --fix-missing && apt-get install -y software-properties-common flex
RUN add-apt-repository ppa:reactos/rosbe-unix -y
RUN apt-get install rosbe-unix -y
RUN echo 'alias rosbe="/usr/RosBE/RosBE.sh"' >> ~/.bashrc
