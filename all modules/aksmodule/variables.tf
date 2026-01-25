############################################
# Azure region
############################################
variable "location" {
  description = "Azure region for all resources"
  type        = string
  default     = "eastus"   # blue (change if you want)
}
