############################################
# Public URL of the container
############################################
output "container_fqdn" {
  value = azurerm_container_group.yellow_container.fqdn
}
