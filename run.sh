#!/bin/bash

#docker run -it whiplash:v1

if [ ! "$(docker ps -q -f name=whiplash)" ]; then
    if [ "$(docker ps -aq -f status=exited -f name=whiplash)" ]; then
        # cleanup
        docker rm whiplash
    fi
    # run your container
    docker run -it --name whiplash whiplash:v1
fi
