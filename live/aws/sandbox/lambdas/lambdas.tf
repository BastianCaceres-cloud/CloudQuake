
module "lambda" {
  source = "git::https://github.com/BastianCaceres-cloud/CloudInfraKit.git//aws/lambda?ref=main"
  
  lambda_function_name = "my-function-example-fromt-ecr-ahpp"
  docker_image_uri = "992927038462.dkr.ecr.us-east-1.amazonaws.com/example-img-lambda-ahpp:latest"

  lambda_timeout    = 3
  lambda_memory_size = 128
  # lambda_entry_point = ["/lambda-entrypoint.sh"]
}



module "lambda_2" {
  source = "git::https://github.com/BastianCaceres-cloud/CloudInfraKit.git//aws/lambda?ref=main"
  
  lambda_function_name = "my-function-example-fromt-ecr-ahpp2"
  docker_image_uri = "992927038462.dkr.ecr.us-east-1.amazonaws.com/example-img-lambda-ahpp:latest"

  lambda_timeout    = 3
  lambda_memory_size = 128
  # lambda_entry_point = ["/lambda-entrypoint.sh"]
}