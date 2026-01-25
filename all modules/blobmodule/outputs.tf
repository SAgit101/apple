############################################
# Storage account name
############################################
output "yellow_storage_account_name" {
  value = azurerm_storage_account.tf_yellow_sa.name
}

############################################
# Container name
############################################
output "yellow_container_name" {
  value = azurerm_storage_container.tf_yellow_container.name
}
