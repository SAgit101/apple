locals {
  user_name = var.user_name
}

resource "azuread_user" "user" {
  user_principal_name   = "${local.user_name}@${var.tenant_domain}"
  display_name          = local.user_name
  mail_nickname         = local.user_name
  account_enabled       = true

  password              = var.user_password
  force_password_change = false
}
