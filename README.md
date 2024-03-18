Terraform folder has all the infrastructure code
Groovy file can be run on Jenkins, Please run it from jenkins controller
Assumptions: 
 - Terraform state file will be remote s3 bucket
 - Input variables are read from -var file
 - Lambda and glue functions implemented and packaged as ZIP files
