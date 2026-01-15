resource "azuread_user" "user" {
  user_principal_name = "${var.user_name}@${var.tenant_domain}"
  display_name        = title(var.user_name)
  mail_nickname       = var.user_name

  password                = var.user_password
  force_password_change   = true
}
