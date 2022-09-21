

# Create a resource group
provider "azurerm" {
  features {}
}
resource "azurerm_resource_group" "example" {
   name     = "${var.rgname}"
   location = "${var.loc}"
}

