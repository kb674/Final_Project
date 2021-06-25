#!/bin/bash

# build docker image
docker build -t spring-petclinic-angular:latest .

# run docker container
docker run --rm -d -p 8080:8080 --name frontend_container jaydenlsf/spring-petclinic-angular:latest
