resource "aws_cloudwatch_event_rule" "weather_trigger" {
  name                = "weather_trigger"
  schedule_expression = "cron(0 5 ? * MON-FRI *)"
  # Other eventbridge configurations

  role_arn = var.eventbridge_role_arn
}
