resource "azurerm_resource_group" "newresg" {
  name     = var.resource_group_name
  location = var.resourcegroup_location

}