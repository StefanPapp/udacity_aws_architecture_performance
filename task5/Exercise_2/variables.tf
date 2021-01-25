# TODO: Define the variable for aws_region
variable region {
  description = "AWS region in which to create resources"
  type        = string
  default     = "eu-central-1"
}

variable secret_key {
  description = "secret key"
  type        = string
}

variable access_key {
  description = "access key"
  type        = string
}