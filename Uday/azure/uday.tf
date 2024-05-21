provider "azurerm" {
  features {

  }
}

resource "azurerm_resource_group" "myresg" {
  name     = "myresourcegroup"
  location = "eastus"

}
resource "azurerm_storage_account" "mystac1234" {
  name                     = "storageudayaccount1234"
  resource_group_name = azurerm_resource_group.myresg.name
  location                 = azurerm_resource_group.myresg.location
  account_tier             = "Standard"
  account_replication_type = "GRS"
}
