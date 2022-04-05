data "archive_file" "welcome" {
    type = "zip"
    source_file = var.python_file
    output_path = var.lambda_zip_location
}

resource "aws_lambda_function" "func" {
  filename      = var.lambda_zip_location
  function_name = var.function_name 
  role          = var.aws_lambda_function_role
  handler       = var.handler_name
  runtime       = var.runtime
  depends_on = [
    aws_iam_role_policy_attachment.lambda_logs,
    aws_cloudwatch_log_group.example,
  ]
}

# See also the following AWS managed policy: AWSLambdaBasicExecutionRole
/*
resource "aws_iam_policy" "lambda_logging" {
  name        = "lambda_logging"
  path        = "/"
  description = "IAM policy for logging from a lambda"
  policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": [
        "logs:CreateLogGroup",
        "logs:CreateLogStream",
        "logs:PutLogEvents"
      ],
      "Resource": "arn:aws:logs:*:*:*",
      "Effect": "Allow"
    }
  ]
}
EOF
}
*/
