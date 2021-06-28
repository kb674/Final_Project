#!/bin/bash

# update apt-get
sudo apt update

# install node.js v14
curl -sL https://deb.nodesource.com/setup_14.x | sudo bash -
sudo apt install nodejs -y

# install curl 
sudo apt install curl -y

# install node version manager (nvm)
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash

# install nodejs@14.15
nvm install 14.15

# change nodejs version
nvm use 14.15

# install node package manager
sudo apt install npm -y

# install angular
echo n | sudo npm install -g @angular/cli@latest
ng update @angular/cli @angular/core --allow-dirty --force

# clone project and change directory
# git clone https://github.com/spring-petclinic/spring-petclinic-angular.git
# cd spring-petclinic-angular


# install local project package
echo n | sudo npm install --save-dev @angular/cli@latest
if npm version > 5.0 delete package-lock.json file
sudo npm install

# run dev server
# ng serve

# build the project
ng build

# install nginx 
sudo apt install -y nginx