module "lambda_weather_retrieve" {
  source        = "terraform-aws-modules/lambda/aws"
  function_name = "weather_retrieve"
  role          = var.lambda_execution_role_arn
  # Other lambda configurations
}

module "lambda_weather_etl" {
  source        = "terraform-aws-modules/lambda/aws"
  function_name = "weather_etl"
  role          = var.lambda_execution_role_arn
  # Other lambda configurations
}
