# main.tf

terraform {
  required_providers {
    elestio = {
      source  = "elestio/elestio"
      version = ">= 0.17.0"
    }
  }
}

provider "elestio" {
  email     = var.elestio_email
  api_token = var.elestio_api_token
}

resource "elestio_project" "project" {
  name = "your-project-name"
}

# Add your resources below

# This postgresql resource is an example.
# Check the documentation to know all available resources: https://registry.terraform.io/providers/elestio/elestio/latest/docs
resource "elestio_postgresql" "example_postgresql" {
  project_id    = elestio_project.project.id
  server_type   = "SMALL-1C-2G"
  provider_name = "hetzner"
  datacenter    = "fsn1"
}
