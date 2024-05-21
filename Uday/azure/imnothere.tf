provider "azurerm" {
    features {

    }
}

resource "azurerm_resource_group" "resg" {
    name = "myresourcegroup"
    location = "eastus"
}

resource "azurerm_storage_account" "mystac" {
    name = "mystorageaccount"
    resource_group_name = "myresourcegroup"
    location= "eastus"
    account_tier = "Standard"
    account_replication_type = "GRS"

}