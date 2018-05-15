FROM ubuntu:xenial

RUN apt-get update && \
    apt-get install -y make && \
    apt-get install -y python3

WORKDIR /code/dotfiles
