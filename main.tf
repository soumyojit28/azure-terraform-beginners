##############################################################################
# * HashiCorp Beginner's Guide to Using Terraform on Azure
# 
# This Terraform configuration will create the following:
#
# Resource group with a virtual network and subnet
# An Ubuntu Linux server running Apache

##############################################################################
# * Shared infrastructure resources

# The latest version of the Azure provider breaks backward compatibility.
# TODO: Update this code to use the latest provider.
provider "azurerm" {
  features {}
}

# First we'll create a resource group. In Azure every resource belongs to a 
# resource group. Think of it as a container to hold all your resources. 
# You can find a complete list of Azure resources supported by Terraform here:
# https://www.terraform.io/docs/providers/azurerm/
resource "azurerm_resource_group" "tf_azure_guide" {
  name     = "${var.resource_group}"
  location = "${var.location}"
}

