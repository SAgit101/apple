############################################
# Azure region
############################################
variable "location" {
  description = "Azure region"
  type        = string
##  default     = "eastus" # blue
##commenting above will make it go to terraform.tfvars to look for values, in this case eastus value
}

############################################
# Storage account name
# MUST be globally unique and lowercase
############################################
variable "storage_account_name" {
  description = "Globally unique storage account name"
  type        = string
##  default     = "yellowstorage12345" # blue (change this)
##commenting above will make it go to terraform.tfvars to look for values
}

############################################
# Blob container name
############################################
variable "container_name" {
  description = "Blob container name"
  type        = string
##  default     = "yellow-container" # blue
##commenting above will make it go to terraform.tfvars to look for values
}
variable "resource_group_name" {
  description = "Name of the Azure Resource Group"
  type        = string
}