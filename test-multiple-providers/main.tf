terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.45.0"
    }
    azuread = {
      source  = "hashicorp/azuread"
      version = "~> 2.45.0"  # Test if both providers get updated
    }
  }
}

provider "azurerm" {
  features {}
}

provider "azuread" {}

resource "azurerm_resource_group" "test" {
  name     = "rg-dependabot-test-multiple"
  location = "East US"
}

#Expected Behavior: Both Azure providers should be updated independently
