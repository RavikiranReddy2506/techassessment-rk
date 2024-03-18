resource "aws_glue_catalog_database" "weather_data_quality" {
  name = "weather_data_quality"
  # Other Glue configurations

  role_arn = var.glue_role_arn
}
