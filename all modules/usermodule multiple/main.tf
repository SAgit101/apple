resource "azuread_user" "newusers" {
  for_each = var.users

  user_principal_name   = "${each.key}@${var.tenant_domain}"
  display_name          = each.value.display_name
  mail_nickname         = each.key
  account_enabled       = true

  password              = each.value.password
  force_password_change = false
}
#var.users here refers directly to <variable "users"> in variables.tf
#"newusers" here referes directly to "azuread_user.newusers" in outputs.tf in