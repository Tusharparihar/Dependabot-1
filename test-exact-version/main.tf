terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.45.0"  # Exact version - should Dependabot update this?
    }
  }
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "test" {
  name     = "rg-dependabot-test-exact"
  location = "East US"
}

####Expected Behavior: Dependabot should suggest updates to newer exact versions (e.g., =3.81.0, =3.82.0)
