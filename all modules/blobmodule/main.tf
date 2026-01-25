############################################
# Resource Group
## so this first section is creating an RG called yellow-storage-rg, and if you dont create 
##then you change values here to mention the existing RG.
############################################
resource "azurerm_resource_group" "tf_yellow_rg" {
  name     = var.resource_group_name
  location = var.location
}

############################################
# Storage Account
# Standard / LRS = cheapest
##this creates storage account, you mention values below, the values could be of new or existing rg,
##whatever you defined above
############################################
resource "azurerm_storage_account" "tf_yellow_sa" {
  name                     = var.storage_account_name
  resource_group_name      = azurerm_resource_group.tf_yellow_rg.name
  location                 = azurerm_resource_group.tf_yellow_rg.location

  account_tier             = "Standard"
  account_replication_type = "LRS"
}

############################################
# Blob Container
############################################
#this below line says go create storage containger and give it local name of tf_yellow_container
resource "azurerm_storage_container" "tf_yellow_container" {
  name                  = var.container_name
  storage_account_name  = azurerm_storage_account.tf_yellow_sa.name
  container_access_type = "private"
}
