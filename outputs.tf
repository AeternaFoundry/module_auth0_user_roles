output "user_roles_id" {
  description = "Map of id values across all user_roles, keyed the same as var.user_roles"
  value       = { for k, v in auth0_user_roles.user_roles : k => v.id }
}
output "user_roles_roles" {
  description = "Map of roles values across all user_roles, keyed the same as var.user_roles"
  value       = { for k, v in auth0_user_roles.user_roles : k => v.roles }
}
output "user_roles_user_id" {
  description = "Map of user_id values across all user_roles, keyed the same as var.user_roles"
  value       = { for k, v in auth0_user_roles.user_roles : k => v.user_id }
}

