FROM ubuntu:latest

MAINTAINER moorcito

RUN useradd -ms /bin/bash deluge
RUN apt-get update
RUN apt-get install -y \
    deluged \
    deluge-webui

USER deluge
WORKDIR /home/deluge

ENTRYPOINT ["deluged", "-d"]


EXPOSE 6881/tcp 6881/udp 8112 58846