resource "aws_iam_user" "user-name" {
  name = var.user-name
}

resource "aws_iam_user_policy_attachment" "this" {
  for_each = toset(var.policy_arns)

  user       = aws_iam_user.user-name.name
  policy_arn = each.value
}