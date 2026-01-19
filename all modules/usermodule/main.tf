resource "azuread_user" "ironman" {
  user_principal_name = "ironman@${var.tenant_domain}"
  display_name        = "Iron Man"
  mail_nickname       = "ironman"
  account_enabled     = true

  password_profile {
    password                           = var.ironman_password
    force_change_password_next_sign_in = false
  }
}
