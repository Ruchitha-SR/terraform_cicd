resource "aws_lambda_function" "lambda_function_2" {
 filename      = "lambda_function.py"
 function_name = "test_lambda"
 role          = aws_iam_role.lambda_role.arn
 handler       = "lambda_handler"
 runtime       = "Python"
}