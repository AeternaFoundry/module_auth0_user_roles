output "user_roles_id" {
  description = "Map of id values across all user_roles, keyed the same as var.user_roles except keys with no id are omitted"
  value       = { for k, v in auth0_user_roles.user_roles : k => v.id if v.id != null && length(v.id) > 0 }
}
output "user_roles_roles" {
  description = "Map of roles values across all user_roles, keyed the same as var.user_roles except keys with no roles are omitted"
  value       = { for k, v in auth0_user_roles.user_roles : k => v.roles if v.roles != null && length(v.roles) > 0 }
}
output "user_roles_user_id" {
  description = "Map of user_id values across all user_roles, keyed the same as var.user_roles except keys with no user_id are omitted"
  value       = { for k, v in auth0_user_roles.user_roles : k => v.user_id if v.user_id != null && length(v.user_id) > 0 }
}

