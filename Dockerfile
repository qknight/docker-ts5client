FROM ghcr.io/linuxserver/baseimage-rdesktop-web:focal# set version label
ARG BUILD_DATE
ARG VERSION
ARG WIRESHARK_VERSION
LABEL build_version="Linuxserver.io version:- ${VERSION} Build-date:- ${BUILD_DATE}"
LABEL maintainer="qknight"# title
ENV TITLE=ts5clientRUN apt-get update && apt install wget tar bzip2 -y
RUN wget https://files.teamspeak-services.com/pre_releases/client/5.0.0-beta70/teamspeak-client.tar.gz
RUN mkdir /ts5client && mv teamspeak-client.tar.gz /ts5client && cd /ts5client && tar xvf teamspeak-client.tar.gz && chmod u+x TeamSpeak && rm teamspeak-client.tar.gzRUN apt-get update && apt-get install libnss3 libnotify4
COPY /root /# ports and volumes
EXPOSE 3000
VOLUME /config
