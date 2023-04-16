# main.tf

terraform {
  required_providers {
    elestio = {
      source  = "elestio/elestio"
      version = ">= 0.7.1" # version who support ssh
    }
  }
}

provider "elestio" {
  email     = var.elestio_email
  api_token = var.elestio_api_token
}

resource "elestio_project" "project" {
  name             = ""
  description      = ""
  technical_emails = var.elestio_email
}
