module "elasticache" {
  source               = "git::https://github.com/BastianCaceres-cloud/CloudInfraKit.git//aws/elasticache?ref=main"
  cluster_id           = "mi-elasticache-redis-cluster"
  node_type            = "cache.t4g.micro"
  num_cache_nodes      = 1
  engine_version       = "6.2"
  subnet_group_name    = "elasticache-subnetgroup"
  security_group_ids   = ["sg-0f2f2f723b789ee20"]
  subnet_ids           = ["subnet-0a8195b3ebc2d6984", "subnet-094726eea389c7f3a", "subnet-052e519657f5ae177", "subnet-06ad01a8f2a40760a", "subnet-013d49cd18467455d", "subnet-02ab93862b4cedb2c"]
  parameter_group_family = "redis6.x"
  parameter_group_name = "custom-redis6-group"
}
