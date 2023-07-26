module "msk" { 
  source = "git::https://github.com/BastianCaceres-cloud/CloudInfraKit.git//aws/msk?ref=main"
  region = "us-east-1" 
  cluster_name = "my-msk-cluster" 
  kafka_version = "2.8.1" 
  number_of_broker_nodes = 3 
  instance_type = "kafka.t3.small" 
  client_subnets = ["subnet-0a8195b3ebc2d6984", "subnet-052e519657f5ae177", "subnet-013d49cd18467455d"] 
  security_groups = ["sg-01bd45db2f3e03afd"] 
  volume_size = 100

}