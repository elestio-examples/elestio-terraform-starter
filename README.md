# Terraform Elestio Starter

You can use as an example this repository to quickly deploy your infrastructure with **terraform** on the **Elestio API**.

## Instructions

1. Rename `secrets.tfvars.example` file to `secrets.tfvars` and fill in the values.
2. Add the resources you want in `main.tf`.
3. Run `terraform init`

## Availables commands

- Preview the changes: `terraform plan -var-file="secrets.tfvars"`

- Apply the changes: `terraform apply -var-file="secrets.tfvars"`

- Show the current state: `terraform show` (sensitives values can be obmitted, you can read them in `terraform.tfstate` file)

- Destroy all the infrastructure: `terraform destroy -var-file="secrets.tfvars"`

## Documentation

Check the [documentation](https://registry.terraform.io/providers/elestio/elestio/latest/docs) to know what resources are available.
