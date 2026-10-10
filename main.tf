resource "auth0_user_roles" "user_roles" {
  for_each = var.user_roles

  roles   = each.value.roles
  user_id = each.value.user_id
}

