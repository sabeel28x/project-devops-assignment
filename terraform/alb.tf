resource "aws_lb" "app_alb" {

  name               = "ecostream-alb"
  load_balancer_type = "application"
  internal           = false
}
