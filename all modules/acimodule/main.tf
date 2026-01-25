############################################
# Resource Group
############################################
resource "azurerm_resource_group" "yellow_rg" {
  name     = "yellow-container-rg"
  location = var.location # blue
}

############################################
# Azure Container Group (ACI)
# This runs a single container directly
############################################
resource "azurerm_container_group" "yellow_container" {
  name                = "yellow-container"
  location            = azurerm_resource_group.yellow_rg.location
  resource_group_name = azurerm_resource_group.yellow_rg.name

  # Linux container
  os_type = "Linux"

  ##########################################
  # Networking
  # Public IP so you can hit it from browser
  ##########################################
  ip_address_type = "Public"
  dns_name_label  = var.dns_name_label # blue (must be globally unique per region)

  ##########################################
  # Container definition
  ##########################################
  container {
    name   = "yellow-app"
    image  = var.container_image # blue
    cpu    = 0.5                  # cheapest usable
    memory = 1.0                  # GB

    ports {
      port     = 80
      protocol = "TCP"
    }
  }

  ##########################################
  # Restart policy
  # OnFailure or Always are common
  ##########################################
  restart_policy = "Always"
}
