resource "azurerm_virtual_network" "azure_vpc" {
  name                = "azure_ntier_vpc"
  resource_group_name = azurerm_resource_group.newresg.name
  address_space       = var.azure_network_range
  location            = var.resourcegroup_location

}

resource "azurerm_subnet" "web" {
  name                 = "web"
  resource_group_name  = var.resource_group_name
  virtual_network_name = azurerm_virtual_network.azure_vpc.name
  address_prefixes     = var.azure_subnet_range

  depends_on = [
    azurerm_resource_group.newresg
  ]
}