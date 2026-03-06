resource "aws_lb" "app_lb" {
  name               = "ecostream-alb"
  internal           = false
  load_balancer_type = "application"
}
