#! /bin/bash

#Install dependencies
sudo apt update -y
sudo apt upgrade -y
sudo apt install unzip wget -y

#install Azure CLI
curl -sL https://aka.ms/InstallAzureCLIDeb | sudo bash

#Authenticate Jenkins with the managed identity
az login --identity

#Credentials
az aks get-credentials --resource-group k8s-test --name k8s-test-cluster

#Install Terraform
curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo apt-key add -
sudo apt-add-repository "deb [arch=$(dpkg --print-architecture)] https://apt.releases.hashicorp.com $(lsb_release -cs) main"
sudo apt install terraform

# Install kubectl
curl -LO https://storage.googleapis.com/kubernetes-release/release/`curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt`/bin/linux/amd64/kubectl
sudo chmod +x kubectl
sudo mv ./kubectl /usr/local/bin/kubectl
sudo az aks install-cli
