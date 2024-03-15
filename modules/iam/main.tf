resource "aws_iam_user" "user" {
  count = var.type == "user" ? 1 : 0
  name  = var.name
}

resource "aws_iam_role" "role" {
  count = var.type == "role" ? 1 : 0
  name  = var.name

  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = "sts:AssumeRole"
        Principal = {
          Service = "ec2.amazonaws.com"
        }
        Effect = "Allow"
        Sid    = ""
      },
    ]
  })
}
