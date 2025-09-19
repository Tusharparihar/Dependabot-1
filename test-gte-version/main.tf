terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.80.0"  # Allow patch updates only (3.80.x)
    }
  }
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "test" {
  name     = "rg-dependabot-test-pessimistic"
  location = "East US"
}

###Dependabot should suggest latest available version updates
