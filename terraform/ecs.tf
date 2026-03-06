resource "aws_ecs_cluster" "main" {
  name = "ecostream-cluster"
}

resource "aws_ecs_task_definition" "app" {
  family                   = "ecostream-task"
  requires_compatibilities = ["FARGATE"]
  network_mode             = "awsvpc"

  cpu    = "256"
  memory = "512"

  container_definitions = jsonencode([
    {
      name  = "ecostream-container"
      image = "${aws_ecr_repository.app_repo.repository_url}:latest"

      portMappings = [
        {
          containerPort = 5000
        }
      ]
    }
  ])
}

resource "aws_ecs_service" "app_service" {

  name            = "ecostream-service"
  cluster         = aws_ecs_cluster.main.id
  task_definition = aws_ecs_task_definition.app.arn

  desired_count = 2
  launch_type   = "FARGATE"

}
