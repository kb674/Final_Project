#!/bin/bash

# build docker image
docker build -t jaydenlsf/spring-petclinic-angular:latest .

# run docker container
docker run --rm -d -p 5000:5000 --name frontend jaydenlsf/spring-petclinic-angular:latest