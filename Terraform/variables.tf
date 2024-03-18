variable "region" {
  description = "AWS region"
  default     = "eu-west-2"
}

variable "lambda_execution_role_name" {
  description = "Name of the IAM role for Lambda execution"
  default     = "lambda_execution_role"
}

variable "eventbridge_role_name" {
  description = "Name of the IAM role for EventBridge"
  default     = "eventbridge_role"
}

variable "s3_role_name" {
  description = "Name of the IAM role for S3"
  default     = "s3_role"
}

variable "glue_role_name" {
  description = "Name of the IAM role for Glue"
  default     = "glue_role"
}
