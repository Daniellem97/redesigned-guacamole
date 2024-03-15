variable "name" {
  description = "The name of the IAM user or role"
  type        = string
}

variable "type" {
  description = "Type of IAM entity to create: 'user' or 'role'."
  type        = string
}
