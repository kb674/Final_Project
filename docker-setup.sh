#!/bin/bash

# login to docker
docker login -u jaydenlsf -p ${DOCKER_PASSWORD}

# build docker images
docker-compose build

# push images to dockerhub
docker-compose push

# run configuration using docker-compose
docker-compose up -d

# remove docker images without tag
docker rmi $(docker images --filter "dangling=true" -q --no-trunc)

# display list of docker images
docker images

# display list of containers
docker ps -a