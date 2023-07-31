module "cognito_opensearch" {
  source = "git::https://github.com/BastianCaceres-cloud/CloudInfraKit.git//aws/cognito?ref=main"

  region                = "us-east-1"
  domain_name           = "nttdatasandbox-os-domain"
  user_pool_name        = "mi-pool-usuarios-opensearch"
  user_group_name       = "mi-grupo-usuarios-opensearch"
  user_group_description = "Grupo de usuarios para OpenSearch"
  identity_pool_name    = "mi-pool-identidades-opensearch"
  iam_role_name         = "mi-rol-iam-opensearch"
  iam_role_policy_name  = "mi-politica-iam-opensearch"
  existing_domain_arn     = "arn:aws:es:us-east-1:992927038462:domain/nttdatasandbox-os-domain"
  user_pool_domain_name = "mi-dominio-pool-usuarios-opensearch"
}