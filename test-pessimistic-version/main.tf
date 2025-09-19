terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.45.0"  # Allow patch updates only (3.80.x)
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

#Expected Behavior: Dependabot should update within patch range (3.80.x → 3.80.y) but not minor (3.81.0)
