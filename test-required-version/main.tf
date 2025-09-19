terraform {
  required_version = ">= 1.5.0, < 2.0.0"  # Should NOT be updated by Dependabot
  
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"  
      version = "~> 3.80.0"
    }
  }
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "test" {
  name     = "rg-dependabot-test-required-version"
  location = "East US"
}

##Expected Behavior: Provider version should be updated, but required_version should remain unchanged
