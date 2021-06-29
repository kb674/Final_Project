terraform {
    required_providers {
        azurerm = {
            source  = "hashicorp/azurerm"
            version = "~> 2.46.0"
        }
    }
}

provider "azurerm" {
    features {}
}

module "k8s" {
    source        = "./k8s"
    project_name  = var.project_name
    group_name    = var.group_name
    location      = var.location
}