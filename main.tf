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
  name             = "your-project-name"
  description      = ""
  technical_emails = var.elestio_email
}

# Add your resources below

# This postgresql resource is an example.
# Check the documentation to know all available resources: https://registry.terraform.io/providers/elestio/elestio/latest/docs
resource "elestio_postgresql" "example_postgresql" {
  project_id    = elestio_project.project.id
  server_name   = "example-postgresql"
  server_type   = "SMALL-1C-2G"
  version       = "14"
  provider_name = "hetzner"
  datacenter    = "fsn1"
  support_level = "level1"
  admin_email   = var.elestio_email
  ssh_keys      = []
}

# Check this guide to chose provider_name, server_type and datacenter: https://registry.terraform.io/providers/elestio/elestio/latest/docs/guides/3_providers_datacenters_server_types
