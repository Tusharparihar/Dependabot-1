terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 3.80.0, < 4.45.1"  # Range: 3.80.0+ but less than 4.0.0
    }
  }
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "test" {
  name     = "rg-dependabot-test-range"
  location = "East US"
}

##Expected Behavior: Dependabot should suggest updates within the 3.x range
