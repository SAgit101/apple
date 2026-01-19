variable "tenant_domain" {
  description = "Azure AD tenant primary domain"
  type        = string
}

variable "users" {
  description = "Map of users to create"
  type = map(object({
    display_name = string
    password     = string
  }))
}
#<variable "users"> here is referenced from var.users in main.tf