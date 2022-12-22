# Motivation

This docker container, builds on top of ghcr.io/linuxserver/baseimage-rdesktop-web:focal, and one can then execute linux programs on the web basically.
In this case we execute the ts5client, which is quite handy for testing.

1. compile it

        docker build -t docker-ts5client .

2. run the container

        docker run -v ${PWD}:/mnt -p 80:3000/tcp -i -t  docker-ts5client:latest

3. start the application

  Inside the container use the xterm with right mouse button to start the /ts5client/TeamSpeak binary.

# License

public domain as far as this Dockerfile goes
