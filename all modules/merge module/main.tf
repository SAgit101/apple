module "users" {
  source = "../usermodule multiple"

  users = var.users
}

module "service_principals" {
  source = "../spmodule multiple"

  service_principals = var.service_principals
}
