############################################
# Resource Group
# Everything lives inside this container
############################################
resource "azurerm_resource_group" "yellow_rg" {
  name     = "yellow-rg"
  location = var.location  # blue (change region if you want)
}

############################################
# Virtual Network
# Required for AKS networking
############################################
resource "azurerm_virtual_network" "yellow_vnet" {
  name                = "yellow-vnet"
  location            = azurerm_resource_group.yellow_rg.location
  resource_group_name = azurerm_resource_group.yellow_rg.name

  # Large range to avoid IP exhaustion
  address_space = ["10.0.0.0/8"]
}

############################################
# Subnet for AKS nodes and pods
############################################
resource "azurerm_subnet" "yellow_subnet" {
  name                 = "yellow-aks-subnet"
  resource_group_name  = azurerm_resource_group.yellow_rg.name
  virtual_network_name = azurerm_virtual_network.yellow_vnet.name

  address_prefixes = ["10.240.0.0/16"]
}

############################################
# AKS Cluster (CHEAPEST SAFE CONFIG)
############################################
resource "azurerm_kubernetes_cluster" "yellow_aks" {
  name                = "yellow-aks"
  location            = azurerm_resource_group.yellow_rg.location
  resource_group_name = azurerm_resource_group.yellow_rg.name

  dns_prefix = "yellowaks" # blue (only matters if you want custom)

  ##########################################
  # Cheapest practical node pool
  ##########################################
  default_node_pool {
    name       = "yellow"
    node_count = 1                      # blue (keep 1 to stay cheap)
    vm_size    = "Standard_B2s"          # CHEAPEST usable VM

    vnet_subnet_id = azurerm_subnet.yellow_subnet.id
  }

  ##########################################
  # System-assigned identity
  # Required for AKS to function
  ##########################################
  identity {
    type = "SystemAssigned"
  }

  ##########################################
  # Azure CNI networking
  ##########################################
  network_profile {
    network_plugin = "azure"
  }
}
