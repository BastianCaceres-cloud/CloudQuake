module "efs" {
  source                     = "git::https://github.com/BastianCaceres-cloud/CloudInfraKit.git//aws/efs?ref=main"
  region                     = "us-east-1"
  vpc_id                     = "vpc-037adc6ee9cb9654b"
  subnet_ids                 = ["subnet-094726eea389c7f3a", "subnet-052e519657f5ae177", "subnet-02ab93862b4cedb2c"]
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