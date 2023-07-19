#MODULE VPC

module "vpc" {
  source = "git::https://github.com/BastianCaceres-cloud/CloudInfraKit.git//aws/vpc?ref=main"

  cidr_block                  = "10.0.0.0/16"
  web_cidrs                   = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24", "10.0.4.0/24", "10.0.5.0/24", "10.0.6.0/24"]
  bussiness_cidrs             = ["10.0.11.0/24", "10.0.12.0/24", "10.0.13.0/24", "10.0.14.0/24", "10.0.15.0/24", "10.0.16.0/24"]
  data_cidrs                  = ["10.0.21.0/24", "10.0.22.0/24", "10.0.23.0/24", "10.0.24.0/24", "10.0.25.0/24", "10.0.26.0/24"]
  availability_zones          = ["us-east-1a", "us-east-1b", "us-east-1c", "us-east-1d", "us-east-1e", "us-east-1f"]
  vpc_name                    = "vpc_project_poc_ahpp"
  web_tier_subnet_names       = ["web_tier_subnet_1", "web_tier_subnet_2", "web_tier_subnet_3", "web_tier_subnet_4", "web_tier_subnet_5", "web_tier_subnet_6"]
  bussiness_tier_subnet_names = ["bussiness_tier_subnet_1", "bussiness_tier_subnet_2", "bussiness_tier_subnet_3", "bussiness_tier_subnet_4", "bussiness_tier_subnet_5", "bussiness_tier_subnet_6"]
  data_tier_subnet_names      = ["data_tier_subnet_1", "data_tier_subnet_2", "data_tier_subnet_3", "data_tier_subnet_4", "data_tier_subnet_5", "data_tier_subnet_6"]
  tags                        = { Owner = "user", Environment = "test" }
  enable_nat_gateway = true
  single_nat_gateway = true
  one_nat_gateway_per_az = false
  create_igw = true
  create_and_associate_route_tables = true
}