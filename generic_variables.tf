#aws region
variable "aws_region" {
  type        = string
  description = "Default aws region"
  default     = "us-east-1"
}
#Environment
variable "environment" {
  type        = string
  description = "Env variable used as prefix"
  default = "dev"
}
