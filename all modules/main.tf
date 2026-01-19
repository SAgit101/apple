resource "azuread_user" "ironman" {
  user_principal_name = "ironman@${var.tenant_domain}"
  display_name        = "Iron Man"
  mail_nickname       = "ironman"

  password = var.ironman_password

  force_password_change = false
  account_enabled       = true
}
