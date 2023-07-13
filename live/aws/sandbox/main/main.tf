
#ELASTIC CONTAINER REGISTRY
module "ecr" {
  source = "git::https://github.com/BastianCaceres-cloud/CloudInfraKit.git//aws/ecr?ref=main"

  ecr_repository_name       = "ecr-test"
  ecr_image_tag_mutability  = "MUTABLE"
  ecr_scan_on_push          = true

}



# S3 BUCKET TERRAFORM STATE BACKEND
# module "s3_tf_backend" {
#   source = "git::https://github.com/cloudbuilderspa/CloudInfrakit.git//aws/s3/tf_backend?ref=main"
#   bucket_name             = "infraestructure"
#   versioning              = false #true
#   force_destroy           = false
#   server_side_encryption  = false #true
# }



# S3 BUCKET STORAGE GATEWAY
# module "s3_storage_gateway" {
#   source = "git::https://github.com/cloudbuilderspa/CloudInfrakit.git//aws/s3/storage_gw?ref=main"
#   bucket_name             = "storage-gateway-env-labs-657495"
#   versioning              = false #true
#   force_destroy           = false
#   server_side_encryption  = false #true
#   enable_lifecycle_rules  = false
# }



##NEW ROUTE53
# module "route53" {

#   source = "git::https://github.com/cloudbuilderspa/CloudInfrakit.git//aws/rt53?ref=feature/aws_route53"

#   create_zone = true

#   zone_name   = "cloudbuilder.cl"

#   records = {
#     www = {
#       name    = "www.cloudbuilder.cl"
#       type    = "A"
#       ttl     = 300
#       records = ["192.0.2.1"]
#     }
#   }

#   tags = {
#     terraform = "true"
#     env = "labs"

#   }

# }



##NEW ACM SSL REQUEST DNS VALIDATION
# module "acm" {
#   source = "git::https://github.com/cloudbuilderspa/CloudInfrakit.git//aws/acm?ref=feature/aws_acmssl"

#   domain_name = "cloudbuilder.cl"
#   zone_id     = module.route53.zone_id
#   tags = {
#     terraform = "true"
#     environment = "labs"
#   }
#   validation_record_fqns   = module.route53.fqdns
#   validation_record_names  = module.route53.names

#   depends_on = [module.route53]
# }

## CLOUDFRONT + S3 + OAI
# module "cloudfront" {
#   source = "git::https://github.com/cloudbuilderspa/CloudInfrakit.git//aws/cfront?ref=feature/aws_cfront"
#   region                            = "us-east-1"
#   bucket_name                       = "cloudfront-s3-oai-poc-ahpp-2023"
#   bucket_acl                        = "private"
#   cloudfront_comment                = "OAI for s3 bucket"
#   cloudfront_default_ttl            = 3600
#   cloudfront_max_ttl                = 86400
#   cloudfront_min_ttl                = 0
#   cloudfront_viewer_protocol_policy = "allow-all"
#   cloudfront_geo_restriction_type   = "none"
# }



# SIMPLE EMAIL SERVICES OUTPUT DNS RECORDS
# module "ses" {
#   source = "git::https://github.com/cloudbuilderspa/CloudInfrakit.git//aws/ses?ref=feature/aws_ses"
#   domain = "cloudbuilder.cl"
# }

# output "domain_identity_arn" {
#   value = module.ses.domain_identity_arn
# }

# output "dkim_tokens" {
#   value = module.ses.dkim_tokens
# }


#LAMBDA FUNCTION WITH ECR IMAGE

# module "lambda" {
#   source = "git::https://github.com/cloudbuilderspa/CloudInfrakit.git//aws/lambda?ref=feature/aws_lambda"
#   region = "us-east-1"
#   lambda_function_name = "my-function"
#   docker_image_uri = "public.ecr.aws/poc-hello-world/hello-service:latest"

#   lambda_timeout    = 3
#   lambda_memory_size = 128
#   # lambda_entry_point = ["/lambda-entrypoint.sh"]

# }



# MODULE SIMPLE QUEUE SERVICE

# module "sqs" {
#   source = "git::https://github.com/cloudbuilderspa/CloudInfrakit.git//aws/sqs?ref=feature/aws_sqs"

#   region                     = "us-east-1"
#   queue_name                 = "my-queue"
#   delay_seconds              = 5
#   max_message_size           = 256000
#   message_retention_seconds  = 86400
#   receive_wait_time_seconds  = 0
#   visibility_timeout_seconds = 30
# }