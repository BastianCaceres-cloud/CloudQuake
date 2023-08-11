module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"

  name = "bamboo-agent"

  instance_type          = "m2.2xlarge"
  key_name               = "key-pair-ec2-bamboo-agent"
  monitoring             = true
  vpc_security_group_ids = ["sg-0142e9d7c1121ebfb"]
  subnet_id              = "subnet-052e519657f5ae177"

  tags = {
    Terraform   = "true"
    Environment = "sandbox"
  }
}