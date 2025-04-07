provider "aws" {
  region = "ap-south-1"
}

resource "aws_db_instance" "my_rds" {
  allocated_storage    = 20
  storage_type         = "gp2"
  engine               = "mysql"
  engine_version       = "8.0"
  instance_class       = "db.t3.medium"
  name                 = "myappdb"
  username             = "admin"
  password             = var.db_password
  multi_az             = true
  publicly_accessible  = false
  backup_retention_period = 7
  skip_final_snapshot  = true
  tags = {
    Environment = "production"
  }
}
