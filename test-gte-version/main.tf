terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 3.80.0"  # Any version 3.80.0 or higher
    }
  }
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "test" {
  name     = "rg-dependabot-test-gte"
  location = "East US"
}

###Dependabot should suggest latest available version updates
