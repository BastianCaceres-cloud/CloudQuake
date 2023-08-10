# module "db" {
#   source = "terraform-aws-modules/rds/aws"

#   identifier = "bitbucketdb"

#   engine            = "postgres"
#   engine_version    = "14"
#   instance_class    = "db.m5.large"
#   allocated_storage = 30
#   db_name  = "bitbucket"
#   username = "bitbucket"
#   port     = "3306"

#   iam_database_authentication_enabled = true

#   vpc_security_group_ids = ["sg-071515f0eb71c8f0d"]

#   maintenance_window = "Mon:00:00-Mon:03:00"
#   backup_window      = "03:00-06:00"

#   # Enhanced Monitoring - see example for details on how to create the role
#   # by yourself, in case you don't want to create it automatically
#   monitoring_interval    = "30"
#   monitoring_role_name   = "MyRDSMonitoringRole"
#   create_monitoring_role = true

#   tags = {
#     Owner       = "user"
#     Environment = "dev"
#   }

#   # DB subnet group
#   create_db_subnet_group = true
#   subnet_ids             = ["subnet-094726eea389c7f3a", "subnet-052e519657f5ae177", "subnet-02ab93862b4cedb2c"]

#   # DB parameter group
#   family = "postgres14"

#   # DB option group
#   major_engine_version = "14"

#   # Database Deletion Protection
#   deletion_protection = false

#   parameters = [
#     {
#       name  = "autovacuum"
#       value = "1"
#     },
#     {
#       name  = "client_encoding"
#       value = "utf8"
#     }
#   ]

#   # options = [
#   #   {
#   #     option_name = "MARIADB_AUDIT_PLUGIN"

#   #     option_settings = [
#   #       {
#   #         name  = "SERVER_AUDIT_EVENTS"
#   #         value = "CONNECT"
#   #       },
#   #       {
#   #         name  = "SERVER_AUDIT_FILE_ROTATIONS"
#   #         value = "37"
#   #       },
#   #     ]
#   #   },
#   # ]
# }





module "db_bamboo" {
  source = "terraform-aws-modules/rds/aws"

  identifier = "bamboodb"

  engine            = "postgres"
  engine_version    = "14"
  instance_class    = "db.m5.large"
  allocated_storage = 30
  db_name  = "bamboo"
  username = "bamboo"
  port     = "5432"

  iam_database_authentication_enabled = true

  vpc_security_group_ids = ["sg-0e11dc4654e348d36"]

  maintenance_window = "Mon:00:00-Mon:03:00"
  backup_window      = "03:00-06:00"

  # Enhanced Monitoring - see example for details on how to create the role
  # by yourself, in case you don't want to create it automatically
  monitoring_interval    = "30"
  monitoring_role_name   = "MyRDSMonitoringRoleBambooBD"
  create_monitoring_role = true

  tags = {
    Owner       = "user"
    Environment = "dev"
  }

  # DB subnet group
  create_db_subnet_group = true
  subnet_ids             = ["subnet-094726eea389c7f3a", "subnet-052e519657f5ae177", "subnet-02ab93862b4cedb2c"]

  # DB parameter group
  family = "postgres14"

  # DB option group
  major_engine_version = "14"

  # Database Deletion Protection
  deletion_protection = false

  parameters = [
    {
      name  = "autovacuum"
      value = "1"
    },
    {
      name  = "client_encoding"
      value = "utf8"
    }
  ]

  # options = [
  #   {
  #     option_name = "MARIADB_AUDIT_PLUGIN"

  #     option_settings = [
  #       {
  #         name  = "SERVER_AUDIT_EVENTS"
  #         value = "CONNECT"
  #       },
  #       {
  #         name  = "SERVER_AUDIT_FILE_ROTATIONS"
  #         value = "37"
  #       },
  #     ]
  #   },
  # ]
}


module "rds_db_jfrog" {
  source = "terraform-aws-modules/rds/aws"

  identifier = "jfrogdb"

  engine            = "postgres"
  engine_version    = "14"
  instance_class    = "db.m5.large"
  allocated_storage = 30
  db_name  = "jfrog"
  username = "jfrog"
  port     = "5432"

  iam_database_authentication_enabled = true

  vpc_security_group_ids = ["sg-0e11dc4654e348d36"]

  maintenance_window = "Mon:00:00-Mon:03:00"
  backup_window      = "03:00-06:00"

  # Enhanced Monitoring - see example for details on how to create the role
  # by yourself, in case you don't want to create it automatically
  monitoring_interval    = "30"
  monitoring_role_name   = "MyRDSMonitoringRoleJfrogBD"
  create_monitoring_role = true

  tags = {
    Owner       = "user"
    Environment = "dev"
  }

  # DB subnet group
  create_db_subnet_group = true
  subnet_ids             = ["subnet-094726eea389c7f3a", "subnet-052e519657f5ae177", "subnet-02ab93862b4cedb2c"]

  # DB parameter group
  family = "postgres14"

  # DB option group
  major_engine_version = "14"

  # Database Deletion Protection
  deletion_protection = false

  parameters = [
    {
      name  = "autovacuum"
      value = "1"
    },
    {
      name  = "client_encoding"
      value = "utf8"
    }
  ]

  # options = [
  #   {
  #     option_name = "MARIADB_AUDIT_PLUGIN"

  #     option_settings = [
  #       {
  #         name  = "SERVER_AUDIT_EVENTS"
  #         value = "CONNECT"
  #       },
  #       {
  #         name  = "SERVER_AUDIT_FILE_ROTATIONS"
  #         value = "37"
  #       },
  #     ]
  #   },
  # ]
}
