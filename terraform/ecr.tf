resource "aws_ecr_repository" "app_repo" {
  name = "ecostream-app"

  image_scanning_configuration {
    scan_on_push = true
  }

  tags = {
    Environment = "all"
  }
}
