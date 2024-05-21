terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.102.0"
    }
  }
}

provider "azurerm" {

  features {
  }
}
resource "azurerm_resource_group" "myresg" {
  name     = "frontend"
  location = "eastus"
}
resource "azurerm_storage_account" "first" {
  name                     = "frontfortf"
  resource_group_name      = "frontf"
  location                 = "eastus"
  account_tier             = "Standard"
  account_replication_type = "GRS"
  depends_on               = [azurerm_resource_group.myresg]
}