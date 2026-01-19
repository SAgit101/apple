variable "ironman_password" {
  description = "Password for ironman Azure AD user (NON-PROD ONLY)"
  type        = string
  sensitive   = true
}

variable "tenant_domain" {
  description = "Azure AD tenant primary domain"
  type        = string
}
