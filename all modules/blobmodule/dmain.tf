#
#############################################
## Existing Resource Group (read-only)
#############################################
#data "azurerm_resource_group" "tf_white_rg" {
#  name = "white-storage-rg"
#}
#
#so above values tell tf to grab rg called white-storage-rg from azure even if tf doesnt #have memory state of it?
#
#and then whatever is defined boave gets referenced below ? and uses that as its pre-req #to create storage container?
#
#############################################
## Storage Account
#############################################
#resource "azurerm_storage_account" "white_sa" {
#  name                = var.storage_account_name
#  resource_group_name = data.azurerm_resource_group.tf_white_rg.name
#  location            = data.azurerm_resource_group.tf_white_rg.location
#
#  account_tier             = "Standard"
#  account_replication_type = "LRS"
#}