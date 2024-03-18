resource "aws_s3_bucket" "weather_landing" {
  bucket = "weather_landing"
  # Other S3 configurations

  role_arn = var.s3_role_arn
}

resource "aws_s3_bucket" "weather_transformed" {
  bucket = "weather_transformed"
  # Other S3 configurations

  role_arn = var.s3_role_arn
}
