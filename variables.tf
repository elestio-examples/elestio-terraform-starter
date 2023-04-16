# variables.tf
# This file must not contain the values! Only declare their type

variable "elestio_email" {
  description = "Email of your Elestio account"
  type        = string
}

variable "elestio_api_token" {
  description = "API Token of your Elestio account"
  type        = string
  sensitive   = true
}
