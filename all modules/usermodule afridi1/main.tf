resource "azuread_user" "afridi" {
  user_principal_name   = "afridi@${var.tenant_domain}"
  display_name          = "afridi"
  mail_nickname         = "afridi"
  account_enabled       = true

  password              = var.afridi_password
  force_password_change = false
}
