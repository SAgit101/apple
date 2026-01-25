terraform {
  backend "azurerm" {
    resource_group_name  = "1resourcegroup"
    storage_account_name = "2ndstorageacct"
    container_name       = "tfstate"
    key                  = "entra-users.tfstate"
  }
}