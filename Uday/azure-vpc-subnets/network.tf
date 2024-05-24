resource "azurerm_virtual_network" "azure_vpc" {
  name                = "azure_ntier_vpc"
  resource_group_name = azurerm_resource_group.newresg.name
  address_space       = [var.azure_network_range]
  location            = var.resourcegroup_location
  depends_on = [
    azurerm_resource_group.newresg
  ]

}


resource "azurerm_subnet" "subnets" {
  count                = length(var.azure_subnets_range)
  # get the name based on count from variable subnets_names 
  name                 = var.subnets_names[count.index]
  resource_group_name  = var.resource_group_name
  virtual_network_name = azurerm_virtual_network.azure_vpc.name
  # get the address prefix based on count from varibale azure_subnets_range
  address_prefixes     = [var.azure_subnets_range[count.index]]
  depends_on = [
    azurerm_resource_group.newresg,
    azurerm_virtual_network.azure_vpc
  ]
}



#resource "azurerm_subnet" "web" {
# name                 = "web"
# resource_group_name  = var.resource_group_name
# virtual_network_name = azurerm_virtual_network.azure_vpc.name
# address_prefixes     = var.azure_subnet_range
#
# depends_on = [
#   azurerm_resource_group.newresg
# ]
#}