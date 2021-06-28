#!/bin/bash

# make sure jq & curl is installed
sudo apt update
sudo apt install curl jq -y

# set compose version to latest
version=$(curl -s https://api.github.com/repos/docker/compose/releases/latest | jq -r '.tag_name')

# download compose to /usr/local/bin/docker-compose
sudo curl -L "https://github.com/docker/compose/releases/download/${version}/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose

# make the file executable
sudo chmod +x /usr/local/bin/docker-compose
