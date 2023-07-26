module "security_groups" {
  source = "git::https://github.com/BastianCaceres-cloud/CloudInfraKit.git//aws/sg?ref=main"
  vpc_id = "vpc-037adc6ee9cb9654b"
  security_groups = {
    "sg-msk-cluster" = {
      name        = "sg-msk-cluster"
      description = "Security Group for MSK Cluster"
      vpc_id      = "vpc-037adc6ee9cb9654b"
      tags = {
        Name = "msk-sg"
      }
      ingress = [        
      {
        description     = "Allow Access to MSK Cluster"
        from_port       = 0
        to_port         = 9092
        protocol        = "tcp"
        cidr_blocks     = ["10.0.0.0/16","172.20.0.0/16"]
        security_groups = [] # Agregar esta propiedad
      },
      ]
      egress = [
      {
        description     = "Allow Outbound to MSK Cluster"
        from_port       = 0
        to_port         = 0
        protocol        = "tcp"
        cidr_blocks     = ["10.0.0.0/16","172.20.0.0/16"]
        security_groups = [] # Agregar esta propiedad
      },
      ]
    }
  }
}