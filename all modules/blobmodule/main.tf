############################################
# Resource Group
############################################
resource "azurerm_resource_group" "yellow_rg" {
  name     = "yellow-storage-rg"
  location = var.location
}

############################################
# Storage Account
# Standard / LRS = cheapest
############################################
resource "azurerm_storage_account" "yellow_sa" {
  name                     = var.storage_account_name
  resource_group_name      = azurerm_resource_group.yellow_rg.name
  location                 = azurerm_resource_group.yellow_rg.location

  account_tier             = "Standard"
  account_replication_type = "LRS"
}

############################################
# Blob Container
############################################
resource "azurerm_storage_container" "yellow_container" {
  name                  = var.container_name
  storage_account_name  = azurerm_storage_account.yellow_sa.name
  container_access_type = "private"
}
