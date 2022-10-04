FROM ubuntu:20.04

WORKDIR /root/workspace

RUN apt-get update && apt-get install -y software-properties-common flex --no-install-recommends\
    && add-apt-repository ppa:reactos/rosbe-unix -y && apt-get install -y rosbe-unix --no-install-recommends && rm -rf /var/lib/apt/lists/*

RUN echo 'alias rosbe="/usr/RosBE/RosBE.sh"' >> ~/.bashrc