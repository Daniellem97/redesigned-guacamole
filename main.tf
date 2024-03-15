module "iam_example_user" {
  source  = "./modules/iam"
  for_each = var.iam_users

  name = each.value.name
}

module "iam_example_role" {
  source  = "./modules/iam"
  for_each = var.iam_roles

  name = each.value.name
}
