resource "aws_db_instance" "my_rds" {
  allocated_storage    = 20
  identifier           = var.rds_identifier
  engine               = "mysql"
  engine_version       = "8.0.41"
  instance_class       = var.rds_instance_class
  username             = var.rds_username
  port                 = 3306                    
  publicly_accessible  = true
  multi_az             = false
  parameter_group_name = "default.mysql8.0"
  vpc_security_group_ids = [var.rds_sg_id]
  storage_encrypted  = true
  copy_tags_to_snapshot = true
  skip_final_snapshot  = true 
  max_allocated_storage = 1000
  tags = {
    name = "vishwa"
  }
}
