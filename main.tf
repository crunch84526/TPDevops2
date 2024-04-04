# Définition du provider Azure
provider "azurerm" {
  features {}
}

# Création du groupe de ressources
resource "azurerm_resource_group" "example" {
  name     = "example-resources"
  location = "East US"
}


