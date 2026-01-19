variable "user_name" {
  description = "Username to create in Azure AD"
  type        = string
}

variable "user_password" {
  description = "Initial password for the user"
  type        = string
  sensitive   = true
}

variable "tenant_domain" {
  description = "Azure AD tenant primary domain"
  type        = string
}
