#EKS
module "eks_fargate" {
  source = "git::https://github.com/BastianCaceres-cloud/CloudInfraKit.git//aws/eks?ref=main"
  region       = "us-east-1"
  cluster_name = "my-eks-cluster"
  vpc_id       = "vpc-08f7e81839d73a339"
  subnet_ids   = ["subnet-0f6e556a524856e76", "subnet-0f99d30e3b8433d9f", "subnet-0c30c282004e2ecb0"]
}