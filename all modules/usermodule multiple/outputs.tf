output "user_ids" {
  value = {
    for k, u in azuread_user.newusers : k => u.id
  }
}
#"azuread_user.newusers" here refers to "newusers" in main.tf file