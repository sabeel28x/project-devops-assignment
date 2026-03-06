variable "aws_region" {
  description = "AWS Region"
  type        = string
  default     = "ap-south-1"
}

variable "dev_vpc_cidr" {
  description = "CIDR block for Dev VPC"
  type        = string
  default     = "10.10.0.0/16"
}

variable "test_vpc_cidr" {
  description = "CIDR block for Test VPC"
  type        = string
  default     = "10.20.0.0/16"
}

variable "prod_vpc_cidr" {
  description = "CIDR block for Prod VPC"
  type        = string
  default     = "10.30.0.0/16"
}

variable "container_port" {
  description = "Application container port"
  type        = number
  default     = 5000
}

variable "db_username" {
  description = "Database admin username"
  type        = string
  default     = "admin"
}

variable "db_password" {
  description = "Database password"
  type        = string
  sensitive   = true
}

variable "db_instance_class" {
  description = "RDS instance type"
  default     = "db.t3.micro"
}
