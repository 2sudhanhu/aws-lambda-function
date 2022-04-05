#region
aws_region = "us-east-1"

#cloudwatch
aws_iam_policy_lambda_logging_arn = "arn:aws:iam::680763698946:policy/cloudwatch-lambda"

aws_iam_role_iam_for_lambda_name = "LambdaGithubDeploy-role-qcmmpm9d"

retention_in_days = 14

#lambda

lambda_zip_location = "outputs/welcome.zip"

python_file = "welcome.py"

function_name = "python_lambda"

aws_lambda_function_role = "arn:aws:iam::680763698946:role/service-role/LambdaGithubDeploy-role-qcmmpm9d"

handler_name = "welcome.hello"

runtime = "python3.8"

#storage

bucket = "sriak47sudhanshu1"

statement_id  = "AllowExecutionFromS3Bucket"

action        = "lambda:InvokeFunction"

lambda_function_name = "python_lambda"

principal     = "s3.amazonaws.com"

filter_suffix = ".pdf"

#filter_prefix = "AWSLogs/"