resource "azurerm_virtual_network" "azure_vpc" {
  name                = "azure_ntier_vpc"
  resource_group_name = azurerm_resource_group.newresg.name
  address_space       = var.azure_network_range
  location            = var.resourcegroup_location

}
