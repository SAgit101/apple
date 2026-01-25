############################################
# Azure region
############################################
variable "location" {
  description = "Azure region"
  type        = string
  default     = "eastus" # blue
}

############################################
# Public DNS label
# Must be unique within the region
############################################
variable "dns_name_label" {
  description = "DNS label for container public endpoint"
  type        = string
  default     = "yellow-aci-demo" # blue (change if conflict)
}

############################################
# Container image
############################################
variable "container_image" {
  description = "Container image to run"
  type        = string
  default     = "nginx:latest" # blue
}
