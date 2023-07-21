module "efs" {
  source                     = "git::https://github.com/BastianCaceres-cloud/CloudInfraKit.git//aws/efs?ref=main"
  region                     = "us-east-1"
  vpc_id                     = "vpc-08f7e81839d73a339"
  subnet_ids                 = ["subnet-0f6e556a524856e76", "subnet-0f99d30e3b8433d9f", "subnet-0c30c282004e2ecb0"]
  cidr_block                 = "10.0.0.0/16"
  creation_token             = "vault-on-fargate"
  volume_name                = "VaultVolume"
  posix_user_gid             = 1000
  posix_user_uid             = 1000
  root_directory_path        = "/vault"
  creation_info_owner_gid    = 1000
  creation_info_owner_uid    = 1000
  creation_info_permissions  = "777"
  security_group_name        = "vault-on-fargate"
  security_group_description = "vault-on-fargate"
}