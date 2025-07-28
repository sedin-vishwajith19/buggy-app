resource "aws_instance" "deploy_server" {
  ami                    = var.instance_ami
  instance_type          = var.ec2_instance_1_instance_type
  key_name               = var.key_name
  subnet_id              = var.subnet_id
  vpc_security_group_ids = [var.instance_vpc_sg_id]

  tags = {
    Name = "vishwa-ror-server"
  }
}
resource "aws_instance" "sonarqube_server" {
  ami                    = var.instance_ami
  instance_type          = var.ec2_instance_2_instance_type
  key_name               = var.key_name
  subnet_id              = var.subnet_id
  vpc_security_group_ids = [var.instance_vpc_sg_id]

  tags = {
    Name = "vishwa-server"
  }
}
