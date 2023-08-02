#DYNAMODB FOR HASHICORP VAULT STORAGE BACKEND DYNAMODB WITH EKS FARGATE
module "vault_dynamodb_backend" {
  source = "git::https://github.com/BastianCaceres-cloud/CloudInfraKit.git//aws/dynamodb?ref=main"

  table_name        = "vault-data"
  
  read_capacity     = 5
  write_capacity    = 5
  
  partition_key_name = "Path"
  partition_key_type = "S"

  sort_key_name     = "Key"
  sort_key_type     = "S"
  
  tags              = {
    Name        = "vault-dynamodb-table"
    Environment = "prod"
  }
}