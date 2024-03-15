variable "iam_users" {
  description = "Map of IAM users to create."
  type = map(object({
    name = string
  }))
  default = {
    "user1" = {
      name = "example-user-1"
    }
  }
}

variable "iam_roles" {
  description = "Map of IAM roles to create."
  type = map(object({
    name = string
  }))
  default = {
    "role1" = {
      name = "example-role-1"
    }
  }
}
