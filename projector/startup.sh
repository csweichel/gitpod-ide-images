#!/bin/sh

if [ ! -e /var/run/docker.sock ]; then
    echo "Docker isn't running yet - starting"
    sudo docker-up &
fi

echo "waiting for Docker"
while [ ! -e /var/run/docker.sock ]; do sleep 1; done

echo "Docker is running - starting projector"
docker run --rm -p 23000:8887 -v /workspace:/home/projector-user:cached csweichel/gitpod-ide-image:goland
