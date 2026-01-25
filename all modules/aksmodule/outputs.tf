############################################
# AKS name
############################################
output "yellow_aks_name" {
  value = azurerm_kubernetes_cluster.yellow_aks.name
}

############################################
# Resource group
############################################
output "yellow_aks_rg" {
  value = azurerm_resource_group.yellow_rg.name
}

############################################
# Kubeconfig (used by kubectl)
############################################
output "yellow_kubeconfig" {
  value     = azurerm_kubernetes_cluster.yellow_aks.kube_config_raw
  sensitive = true
}
