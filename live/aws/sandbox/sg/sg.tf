##SECURITY GROUP MSK

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



### SECURITY GROUP ELASTICACHE



module "security_groups_elasticache" {
  source = "git::https://github.com/BastianCaceres-cloud/CloudInfraKit.git//aws/sg?ref=main"
  vpc_id = "vpc-037adc6ee9cb9654b"
  security_groups = {
    "sg-msk-cluster" = {
      name        = "sg-elasticache-cluster"
      description = "Security Group for Elasticache Cluster"
      vpc_id      = "vpc-037adc6ee9cb9654b"
      tags = {
        Name = "elasticache-sg"
      }
      ingress = [        
      {
        description     = "Allow Access to Elasticache Cluster"
        from_port       = 0
        to_port         = 6379
        protocol        = "tcp"
        cidr_blocks     = ["10.0.0.0/16","172.20.0.0/16"]
        security_groups = [] # Agregar esta propiedad
      },
      ]
      egress = [
      {
        description     = "Allow Outbound to Elasticache Cluster"
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



### SECURITY GROUP RDS


module "security_groups_rds" {
  source = "git::https://github.com/BastianCaceres-cloud/CloudInfraKit.git//aws/sg?ref=main"
  vpc_id = "vpc-037adc6ee9cb9654b"
  security_groups = {
    "sg-rds" = {
      name        = "sg-rds"
      description = "Security Group for rds"
      vpc_id      = "vpc-037adc6ee9cb9654b"
      tags = {
        Name = "rds-sg"
      }
      ingress = [        
      {
        description     = "Allow Access to rds"
        from_port       = 0
        to_port         = 3306
        protocol        = "tcp"
        cidr_blocks     = ["10.0.0.0/16","172.20.0.0/16"]
        security_groups = [] # Agregar esta propiedad
      },
      ]
      egress = [
      {
        description     = "Allow Outbound to rds"
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


module "security_groups_rds_bnamboo" {
  source = "git::https://github.com/BastianCaceres-cloud/CloudInfraKit.git//aws/sg?ref=main"
  vpc_id = "vpc-037adc6ee9cb9654b"
  security_groups = {
    "sg-rds" = {
      name        = "sg-rds_bamboo"
      description = "Security Group for rds bamboo"
      vpc_id      = "vpc-037adc6ee9cb9654b"
      tags = {
        Name = "rds-sg"
      }
      ingress = [        
      {
        description     = "Allow Access to rds bamboo"
        from_port       = 0
        to_port         = 5432
        protocol        = "tcp"
        cidr_blocks     = ["10.0.0.0/16","172.20.0.0/16"]
        security_groups = [] # Agregar esta propiedad
      },
      ]
      egress = [
      {
        description     = "Allow Outbound to rds"
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






module "security_groups_ec2_jfrog" {
  source = "git::https://github.com/BastianCaceres-cloud/CloudInfraKit.git//aws/sg?ref=main"
  vpc_id = "vpc-037adc6ee9cb9654b"
  security_groups = {
    "sg-ec2-jfrog" = {
      name        = "sg-ec2-jfrog"
      description = "Security Group for ec2-jfrog"
      vpc_id      = "vpc-037adc6ee9cb9654b"
      tags = {
        Name = "jfrog-sg"
      }
      ingress = [        
      {
        description     = "Allow Access to ec2-jfrog from vpc and eks cidr"
        from_port       = 0
        to_port         = 0
        protocol        = "tcp"
        cidr_blocks     = ["10.0.0.0/16","172.20.0.0/16","0.0.0.0/0"]
        security_groups = [] # Agregar esta propiedad
      },
      ]
      egress = [
      {
        description     = "Allow Outbound to ec2-jfrog"
        from_port       = 0
        to_port         = 0
        protocol        = "tcp"
        cidr_blocks     = ["10.0.0.0/16","172.20.0.0/16","0.0.0.0/0"]
        security_groups = [] # Agregar esta propiedad
      },
      ]
    }
  }
}



module "security_groups_rds_jfrog" {
  source = "git::https://github.com/BastianCaceres-cloud/CloudInfraKit.git//aws/sg?ref=main"
  vpc_id = "vpc-037adc6ee9cb9654b"
  security_groups = {
    "sg-rds-jfrog" = {
      name        = "sg-rds_jfrog"
      description = "Security Group for rds jfrog"
      vpc_id      = "vpc-037adc6ee9cb9654b"
      tags = {
        Name = "rds-sg"
      }
      ingress = [        
      {
        description     = "Allow Access to rds jfrog"
        from_port       = 0
        to_port         = 5432
        protocol        = "tcp"
        cidr_blocks     = ["10.0.0.0/16","172.20.0.0/16"]
        security_groups = [] # Agregar esta propiedad
      },
      ]
      egress = [
      {
        description     = "Allow Outbound to rds jfrog"
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





module "security_groups_ec2_agent_bamboo" {
  source = "git::https://github.com/BastianCaceres-cloud/CloudInfraKit.git//aws/sg?ref=main"
  vpc_id = "vpc-037adc6ee9cb9654b"
  security_groups = {
    "sg-ec2-agent-bamboo" = {
      name        = "sg-ec2-agent-bamboo"
      description = "Security Group for ec2-agent-bamboo"
      vpc_id      = "vpc-037adc6ee9cb9654b"
      tags = {
        Name = "ec2-agent-bamboo"
      }
      ingress = [        
      {
        description     = "Allow Access to ec2-agent-bamboo from vpc and eks cidr"
        from_port       = 0
        to_port         = 0
        protocol        = "tcp"
        cidr_blocks     = ["10.0.0.0/16","172.20.0.0/16"]
        security_groups = [] # Agregar esta propiedad
      },
      ]
      egress = [
      {
        description     = "Allow Outbound to ec2-agent-bamboo"
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