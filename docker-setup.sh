#!/bin/bash

# build docker images
docker-compose build

# push images to dockerhub
docker-compose push

# run configuration using docker-compose
docker-compose up -d