provider "aws" {
  region = "us-west-2" # Change to your desired AWS region
}

module "iam_example_user" {
  source  = "./modules/iam"
  for_each = var.iam_users

  name = each.value.name
  type = "user" # Add this line
}

module "iam_example_role" {
  source  = "./modules/iam"
  for_each = var.iam_roles

  name = each.value.name
  type = "role" # Add this line
}
