FROM ubuntu:latest

WORKDIR /root

RUN apt update
RUN apt install software-properties-common flex -y
RUN add-apt-repository ppa:reactos/rosbe-unix -y
RUN apt install rosbe-unix -y