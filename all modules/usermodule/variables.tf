variable "afridi_password" {
  description = "Password for afridi Azure AD user (NON-PROD ONLY)"
  type        = string
  sensitive   = true
}

variable "tenant_domain" {
  description = "Azure AD tenant primary domain"
  type        = string
}
