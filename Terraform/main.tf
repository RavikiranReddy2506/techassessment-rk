provider "aws" {
  region = var.region
}

terraform {
  backend "s3" {
    bucket = "terraform-state-bucket"
    key    = "weather_etl.tfstate"
    region = "eu-west-2"
  }
}

module "lambda" {
  source = "./lambda"
  lambda_execution_role_arn = aws_iam_role.lambda_execution.arn
}

module "eventbridge" {
  source = "./eventbridge"
  eventbridge_role_arn = aws_iam_role.eventbridge.arn
}

module "s3" {
  source = "./s3"
  s3_role_arn = aws_iam_role.s3.arn
}

module "glue" {
  source = "./glue"
  glue_role_arn = aws_iam_role.glue.arn
}
