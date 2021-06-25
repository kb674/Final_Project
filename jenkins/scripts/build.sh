#! /bin/bash

#Install dependencies
sudo apt update -y
sudo apt install unzip wget -y


#install Azure CLI
curl -sL https://aka.ms/InstallAzureCLIDeb | sudo bash

#Install Terraform
wget https://releases.hashicorp.com/terraform/1.0.1/terraform_1.0.1_linux_amd64.zip
unzip terraform_*_linux_*.zip
sudo mv terraform /usr/local/bin/
rm terraform_*_linux_*.zip

# Install kubectl
curl -LO https://storage.googleapis.com/kubernetes-release/release/`curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt`/bin/linux/amd64/kubectl
sudo chmod +x kubectl
sudo mv ./kubectl /usr/local/bin/kubectl
sudo az aks install-cli


