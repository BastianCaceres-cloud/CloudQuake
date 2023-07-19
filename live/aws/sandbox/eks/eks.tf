#EKS
module "eks_fargate" {
  source = "git::https://github.com/BastianCaceres-cloud/CloudInfraKit.git//aws/eks?ref=main"
  region       = "us-east-1"
  cluster_name = "my-eks-cluster"
  vpc_id       = "vpc-08f7e81839d73a339"
  subnet_ids   = ["subnet-01881f972b60f891c", "subnet-03b645e530581055a", "subnet-091fb7a6fa9bb9569"]
}