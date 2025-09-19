terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      # No version specified - should use latest
    }
  }
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "test" {
  name     = "rg-dependabot-test-latest"
  location = "East US"
}
###Expected Behavior: Dependabot behavior unclear - might suggest adding version constraints
