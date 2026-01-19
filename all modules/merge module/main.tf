module "users" {
  source = "../usermodule multiple"

  tenant_domain = var.tenant_domain
  users         = var.users
}

module "service_principals" {
  source = "../spmodule multiple"

  tenant_domain      = var.tenant_domain
  service_principals = var.service_principals
}
