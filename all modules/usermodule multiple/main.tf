resource "azuread_user" "users" {
  for_each = var.users

  user_principal_name   = "${each.key}@${var.tenant_domain}"
  display_name          = each.value.display_name
  mail_nickname         = each.key
  account_enabled       = true

  password              = each.value.password
  force_password_change = false
}
