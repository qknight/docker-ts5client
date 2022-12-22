FROM ghcr.io/linuxserver/baseimage-rdesktop-web:focal
ARG BUILD_DATE
ARG VERSION
LABEL build_version="Linuxserver.io version:- ${VERSION} Build-date:- ${BUILD_DATE}"
LABEL maintainer="qknight"
ENV TITLE=ts5client
RUN apt-get update && apt install wget tar bzip2 libnss3 libnotify4 -y
RUN wget https://files.teamspeak-services.com/pre_releases/client/5.0.0-beta70/teamspeak-client.tar.gz
RUN mkdir /ts5client && mv teamspeak-client.tar.gz /ts5client && cd /ts5client && tar xvf teamspeak-client.tar.gz && chmod u+x TeamSpeak && rm teamspeak-client.tar.gz
COPY /root /
EXPOSE 3000
VOLUME /config
