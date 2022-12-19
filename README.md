# Motivation

This container builds ghcr.io/linuxserver/baseimage-rdesktop-web:focal and puts the teamspeak beta client into it so it can be executed from the web.

1. compile it

        docker build -t docker-ts5client .

2. run the container

        docker run -v ${PWD}:/mnt -p 80:3000/tcp -i -t  docker-ts5client:latest

3. start the application

  Inside the container use the xterm with right mouse button to start the /ts5client/TeamSpeak binary.

# License

public domain as far as this Dockerfile goes
