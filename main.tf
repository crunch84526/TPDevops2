# Définition du provider Azure
provider "azurerm" {
  features {}
}

# Référencement du groupe de ressources existant
data "azurerm_resource_group" "existing" {
  name = "azurerm_resource_group"
}


