See https://gitlab.tmspk.dev/teamspeak/docker-ts5client

docker build -t docker-ts5client .

docker run -v ${PWD}:/mnt -p 80:3000/tcp -i -t  docker-ts5client:latest

