# Référencement du groupe de ressources existant
data "azurerm_resource_group" "existing" {
  name = azurerm_resource_group.example.name
}

# Création du compte de stockage
resource "azurerm_storage_account" "example" {
  name                     = "azurerm_storage_account"
  resource_group_name      = data.azurerm_resource_group.existing.name
  location                 = data.azurerm_resource_group.existing.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = {
    environment = "dev"
  }
}
