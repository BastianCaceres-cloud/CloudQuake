#APIGW - OpenAPI
module "api_gateway_openapi" {
  source = "git::https://github.com/BastianCaceres-cloud/CloudInfraKit.git//aws/apigw_openapi?ref=main"
  openapi_definition = file("${path.module}/API-desarrollo-oas30-apigateway.yaml")
}