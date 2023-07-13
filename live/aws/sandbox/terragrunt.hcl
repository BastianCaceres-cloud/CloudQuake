#Keep your backend configuration DRY
remote_state {
  backend = "s3"
  generate = {
    path      = "backend.tf"
    if_exists = "overwrite_terragrunt"
  }
  config = {
    bucket = "tf-infraestructure-tfstate-ahpp-sandbox"
    key = "${path_relative_to_include()}/terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
    dynamodb_table = "tf-infraestructure-tfstate-ahpp-sandbox"
  }
}
#Keep your provider configuration DRY
generate "provider" {
  path = "provider.tf"
  if_exists = "overwrite_terragrunt"
  contents = <<EOF
provider "aws" {
  region = "us-east-1"
}

EOF
}
#Keep your Terraform CLI arguments DRY
# terraform {
#   extra_arguments "common_vars" {
#     commands = ["plan", "apply"]

#     arguments = [
#       "-var-file=../../common.tfvars",
#       "-var-file=../region.tfvars"
#     ]
#   }
# }

