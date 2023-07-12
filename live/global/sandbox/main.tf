# S3 BUCKET TERRAFORM STATE BACKEND
module "s3_tf_backend" {
  source = "git::https://github.com/BastianCaceres-cloud/CloudInfraKit.git//aws/s3_tf_backend?ref=main"
  bucket_name             = "tf-infraestructure-tfstate-ahpp-sandbox"
  versioning              = true` #true
  force_destroy           = false
  server_side_encryption  = true #true
}