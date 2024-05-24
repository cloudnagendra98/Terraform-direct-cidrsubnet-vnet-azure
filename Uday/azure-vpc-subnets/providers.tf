terraform {
  required_providers {
    azurerm = {
      version = ">= 3.104.2"
      source  = "hashicorp/azurerm"
    }
  }
  required_version = ">= 1.8.3"
}

provider "azurerm" {
  features {

  }

}