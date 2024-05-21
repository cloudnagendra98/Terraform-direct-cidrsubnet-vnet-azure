terraform {
  required_providers {
    azurerm = {
#this is terraform provider i.e azurerm version constraints
        version = "~>= 3.104.0"
        source = "hashicorp/azurerm"
    }
  }
  #this is terraform version constraints
  required_version = ">= 1.8.3"
}
provider "azurerm" {
    features {
      
    }
  
}