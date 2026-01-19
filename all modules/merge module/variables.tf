variable "users" {
  type = map(object({
    display_name = string
    password     = string
  }))
}

variable "service_principals" {
  type = map(object({
    display_name = string
  }))
}
