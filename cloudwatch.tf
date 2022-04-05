resource "aws_cloudwatch_log_group" "example" {
  name              = "/aws/lambda/welcome"
  retention_in_days = var.retention_in_days
}

resource "aws_iam_role_policy_attachment" "lambda_logs" {
  role       = var.aws_iam_role_iam_for_lambda_name
  policy_arn = var.aws_iam_policy_lambda_logging_arn
}

