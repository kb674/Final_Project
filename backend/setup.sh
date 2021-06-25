#!/bin/bash

# install maven
sudo apt-get install maven -y

# run mysql in a docker container
docker run --name mysql-petclinic -e MYSQL_ROOT_PASSWORD=petclinic -e MYSQL_DATABASE=petclinic -d -p 3306:3306 mysql:5.7.8

# install mysql
sudo apt install mysql-client-core-5.7