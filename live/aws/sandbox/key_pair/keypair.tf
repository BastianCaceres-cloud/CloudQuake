module "key_pair" {
  source = "terraform-aws-modules/key-pair/aws"

  key_name           = "key-pair-jfrog"
  create_private_key = true
}
