############################################
# Storage account name
############################################
output "yellow_storage_account_name" {
  value = azurerm_storage_account.yellow_sa.name
}

############################################
# Container name
############################################
output "yellow_container_name" {
  value = azurerm_storage_container.yellow_container.name
}
