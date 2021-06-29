#!/bin/bash

# install maven
sudo apt-get install maven -y

# install mysql
sudo apt install mysql-client-core-5.7

# run backend in a docker container
docker run --rm -d -p 9966:9966 --name backend jaydenlsf/spring-petclinic-rest

# run mysql in a docker container
docker run -e MYSQL_ROOT_PASSWORD=petclinic -e MYSQL_DATABASE=petclinic -d -p 3306:3306 --name mysql-petclinic mysql:5.7.8