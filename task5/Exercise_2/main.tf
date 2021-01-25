terraform {
  required_version = ">= 0.13"
}

provider "aws" {
  region = var.region
  access_key = var.access_key
  secret_key = var.secret_key
}

resource "aws_iam_role" "iam_for_lambda" {
  name = "iam_for_lambda"

  assume_role_policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Principal": {
        "Service": "lambda.amazonaws.com"
      },
      "Effect": "Allow",
      "Sid": ""
    }
  ]
}
EOF
}

resource "aws_lambda_function" "default" {
  filename      = "greet_lambda.py.zip"
  function_name = "greet_lambda"
  role          = aws_iam_role.iam_for_lambda.arn
  handler       = "greet_lambda.lambda_handler"

  source_code_hash = filebase64sha256("greet_lambda.py.zip")

  runtime = "python3.8"

  environment {
    variables = {
      foo = "bar"
    }
  }
}