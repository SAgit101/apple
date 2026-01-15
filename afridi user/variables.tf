variable "user_name" {
  description = "Username for the Azure AD user"
  type        = string
}

variable "tenant_domain" {
  description = "Azure AD tenant domain (e.g. contoso.onmicrosoft.com)"
  type        = string
}

variable "user_password" {
  description = "Password for the user"
  type        = string
  sensitive   = true
}
