resource "aws_ecs_cluster" "my_cluster" {
  name = "ecs-cluster-vishwa"
  region = "ap-south-1"
  setting {
        name  = "containerInsights"
        value = "disabled"
    }
}
