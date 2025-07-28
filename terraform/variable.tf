variable "region" {
  description = "AWS Region"
  type        = string
}
########################### EC2 ##############################
variable "ec2_instance_2_name" {
  description = "Name tag or identifier for EC2 instance 2"
  type        = string
}

variable "ec2_instance_2_instance_type" {
  description = "Instance type for EC2 instance 2"
  type        = string
}

variable "ec2_instance_1_name" {
  description = "Name tag or identifier for EC2 instance 2"
  type        = string
}

variable "ec2_instance_1_instance_type" {
  description = "Instance type for EC2 instance 2"
  type        = string
}

variable "instance_vpc_sg_id" {
  description = "VPC ID where resources will be deployed"
  type        = string
}

variable "instance_ami" {
  description = "VPC ID where resources will be deployed"
  type        = string
}

variable "subnet_id" {
  description = "List of subnet IDs"
  type        = string
}

variable "key_name" {
  description = "SSH key pair name to access EC2 instances"
  type        = string
}
######################## RDS ################################
variable "rds_instance_class" {
  description = "RDS instance type"
  type        = string
}

variable "rds_sg_id" {
  description = "RDS instance type"
  type        = string
}

variable "rds_username" {
  description = "Master username for RDS"
  type        = string
}

variable "rds_identifier" {
  description = "Master username for RDS"
  type        = string
}
################################ ECS-CLUSTER ##############################
variable "ecs_cluster_name" {
  description = "Name of ECS Cluster"
  type        = string
}
############################## S3 ###############################
variable "s3_bucket" {
  description = "VPC ID where resources will be deployed"
  type        = string
}

variable "s3_key" {
  description = "VPC ID where resources will be deployed"
  type        = string
}