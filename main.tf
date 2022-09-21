terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
  }
}

# Create a resource group
provider "azurerm" {
  features {}
}
resource "azurerm_resource_group" "example" {
   name     = "${var.rgname}"
   location = "${var.loc}"
}

