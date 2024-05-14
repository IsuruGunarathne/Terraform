# Configure the Azure provider
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0.2"
    }
  }

  backend "azurerm" {
      resource_group_name  = ""
      storage_account_name = ""
      container_name       = ""
      key                  = ""
  }
  required_version = ">= 1.1.0"
}

provider "azurerm" {
  features {}
}

# Define a variable for the resource group name
variable "resource_group_name" {}
variable "location" {}

resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name  
  location = var.location
}
