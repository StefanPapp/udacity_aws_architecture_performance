# TODO: Define the output variable for the lambda function.
output "file" {
  value = aws_lambda_function.default.filename
}