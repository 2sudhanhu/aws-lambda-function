resource "aws_s3_bucket" "bucket" {
  bucket = var.bucket
}
resource "aws_lambda_permission" "allow_bucket" {
  statement_id  = var.statement_id
  action        = var.action
  function_name = var.lambda_function_name
  principal     = var.principal
  source_arn    = aws_s3_bucket.bucket.arn
}
resource "aws_s3_bucket_notification" "bucket_notification" {
  bucket = aws_s3_bucket.bucket.id
  lambda_function {
    lambda_function_arn = aws_lambda_function.func.arn
    events              = ["s3:ObjectCreated:*"]
    #filter_prefix       = var.filter_prefix
    filter_suffix       = var.filter_suffix 
  }
  depends_on = [aws_lambda_permission.allow_bucket] 

}