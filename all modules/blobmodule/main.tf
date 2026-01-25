############################################
# Resource Group
# Dedicated RG for storage stack
############################################
resource "azurerm_resource_group" "yellow_rg" {
  name     = "yellow-storage-rg"
  location = var.location # blue
}

############################################
# Storage Account
# Cheapest general-purpose storage
############################################
resource "azurerm_storage_account" "yellow_sa" {
  name                     = var.storage_account_name # blue (must be globally unique, lowercase)
  resource_group_name      = azurerm_resource_group.yellow_rg.name
  location                 = azurerm_resource_group.yellow_rg.location

  # Cheapest standard storage
  account_tier             = "Standard"
  account_replication_type = "LRS"   # cheapest replication

  # Required settings
  allow_blob_public_access = false
}

############################################
# Blob Container
# Logical container inside the storage account
############################################
resource "azurerm_storage_container" "yellow_container" {
  name                  = var.container_name # blue
  storage_account_name  = azurerm_storage_account.yellow_sa.name
  container_access_type = "private"
}
