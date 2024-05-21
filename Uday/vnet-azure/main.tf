# This is the resource group in which we have created ntier
resource "azurerm_resource_group" "ntier" {
  name     = var.resource_group_name
  location = var.location
}