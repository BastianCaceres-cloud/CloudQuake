module "opensearch_clusteradmin" {
  source = "git::https://github.com/BastianCaceres-cloud/CloudInfraKit.git//aws/opensearch?ref=main"

  region        = "us-east-1"
  domain_name   = "nttdatasandbox-os-domain"
  engine_version = "OpenSearch_1.0"
  instance_type = "m5.large.search"
  instance_count = 1
  ebs_enabled   = true
  volume_size   = 10
}