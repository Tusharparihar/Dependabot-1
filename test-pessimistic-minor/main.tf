terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.80"  # Allow minor updates (3.80.x → 3.81.x, 3.82.x, etc.)
    }
  }
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "test" {
  name     = "rg-dependabot-test-minor"
  location = "East US"
}

##Expected Behavior: Dependabot should suggest minor version updates within v3.x
