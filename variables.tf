#region
variable "aws_region" {}

#cloudwatch
variable "aws_iam_policy_lambda_logging_arn"  {}

variable "aws_iam_role_iam_for_lambda_name" {}

variable "retention_in_days" {}

#lambda

variable "lambda_zip_location" {}

variable "python_file" {}

variable "function_name" {}

variable "aws_lambda_function_role" {}

variable handler_name {}

variable runtime {}

#storage

variable "bucket" {}

variable "statement_id" {}

variable "action"       {}

variable "lambda_function_name" {}

variable "principal"    {}

variable "filter_suffix" {}

#variable "filter_prefix"{}