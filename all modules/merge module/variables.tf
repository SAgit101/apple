variable "users" {
  type = map(object({
    display_name = string
    password     = string
  }))
}

variable "service_principals" {
  type = map(object({
    display_name = string
  }))
}

variable "tenant_domain" {
  description = "Azure AD tenant primary domain"
  type        = string
}