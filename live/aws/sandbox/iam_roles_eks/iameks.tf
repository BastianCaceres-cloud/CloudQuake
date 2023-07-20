module "eks_iam_roles" {
  source = "git::https://github.com/BastianCaceres-cloud/CloudInfraKit.git//aws/iam/roles/eks?ref=main"
  
  region       = "us-east-1"
  cluster_name = "my-eks-cluster-ahpp_sandbox-2"
}

output "cluster_role_arn" {
  value = module.eks_iam_roles.cluster_role_arn
}

output "fargate_pod_execution_role_arn" {
  value = module.eks_iam_roles.fargate_pod_execution_role_arn
}
