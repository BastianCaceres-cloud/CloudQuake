#EKS
module "eks_fargate" {
  source = "git::https://github.com/BastianCaceres-cloud/CloudInfraKit.git//aws/eks?ref=main"
  region       = "us-east-1"
  cluster_name = "my-eks-cluster-ahpp"
  vpc_id       = "vpc-08f7e81839d73a339"
  subnet_ids   = ["subnet-0f6e556a524856e76", "subnet-0f99d30e3b8433d9f", "subnet-0c30c282004e2ecb0"]
  aws_auth_roles = [
    {
      rolearn  = "arn:aws:iam::992927038462:role/my-eks-cluster_role"
      username = "my-eks-cluster-role"
      groups   = ["system:masters"]
    },
    {
      rolearn  = "arn:aws:iam::992927038462:role/fargate_pod_execution_role"
      username = "fargate_pod_execution_role"
      groups   = ["system:masters"]
    }
  ]

  aws_auth_users = [
    {
      userarn  = "arn:aws:iam::992927038462:user/bzamora"
      username = "bzamora"
      groups   = ["system:masters"]
    },
    {
      userarn  = "arn:aws:iam::992927038462:user/bcaceres"
      username = "bcaceres"
      groups   = ["system:masters"]
    },
    {
      userarn  = "arn:aws:iam::992927038462:user/pipelines"
      username = "pipelines"
      groups   = ["system:masters"]
    }
  ]

  aws_auth_accounts = [
    "992927038462",
  ]
}