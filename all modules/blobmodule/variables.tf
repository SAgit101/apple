############################################
# Azure region
############################################
variable "location" {
  description = "Azure region"
  type        = string
  default     = "eastus" # blue
}

############################################
# Storage account name
# MUST be globally unique and lowercase
############################################
variable "storage_account_name" {
  description = "Globally unique storage account name"
  type        = string
  default     = "yellowstorage12345" # blue (change this)
}

############################################
# Blob container name
############################################
variable "container_name" {
  description = "Blob container name"
  type        = string
  default     = "yellow-container" # blue
}
