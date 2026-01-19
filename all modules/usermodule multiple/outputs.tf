output "user_ids" {
  value = {
    for k, u in azuread_user.users : k => u.id
  }
}
