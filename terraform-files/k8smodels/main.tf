terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=2.46.1"
    }
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}

  use_msi = true
  subscription_id = "a9776c0d-e546-42a7-a002-63ba4a52ba62"
  tenant_id = "de28047b-0625-4fad-adc8-487a110ddb70"
}


module "k8s" {
    source        = "./k8s"
    project_name  = var.project_name
    group_name    = var.group_name
    location      = var.location
}