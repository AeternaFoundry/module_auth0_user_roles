variable "user_roles" {
  description = <<EOT
Map of user_roles, attributes below
Required:
    - roles
    - user_id
EOT

  type = map(object({
    roles   = set(string)
    user_id = string
  }))
}

