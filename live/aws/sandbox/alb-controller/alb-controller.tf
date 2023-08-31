module "aws_load_balancer_controller" {
  source = "git::https://github.com/BastianCaceres-cloud/CloudInfraKit.git//aws/alb-controller?ref=main"
  cluster_name          = "pagopensiones-sandbox"
  cluster_iam_role_name = "eks-pagopensiones-sandbox-role-irsa"
  iam_policy_file       = "iam-policy.json"
}
