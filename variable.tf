# AWS region 

variable "aws_region" {
  description = "AWS region where all resources will be created"
  type        = string
  default     = "ap-south-1"
}

# ECS application / service name

variable "app_name" {
  description = "Application name used for ECS resources"
  type        = string
  default     = "fargate-app"
}

# Container listening port

variable "container_port" {
  description = "Port the container exposes "
  type        = number
  default     = 5000
}

# Desired ECS task count at launch

variable "desired_count" {
  description = "Number of ECS tasks to run initially"
  type        = number
  default     = 1
}

# Auto-scaling min/max

variable "min_capacity" {
  description = "Minimum number of tasks for auto-scaling"
  type        = number
  default     = 1
}

variable "max_capacity" {
  description = "Maximum number of tasks for auto-scaling"
  type        = number
  default     = 3
}

# Target scaling thresholds

variable "cpu_target" {
  description = "Target CPU utilization percentage for auto-scaling"
type        = number
  default     = 50
}

variable "memory_target" {
  description = "Target Memory utilization percentage for auto-scaling"
  type        = number
  default     = 70
}

# Docker image pushed to ECR


variable "ecr_image_uri" {
  description = "970547365086.dkr.ecr.ap-south-1.amazonaws.com/fargate-app:latest"
  type        = string
}

# Task definition 

variable "task_cpu" {
  description = "Fargate task CPU units"
type        = string
  default     = "256"
}

variable "task_memory" {
  description = "Fargate task memory in MiB"
  type        = string
  default     = "512"
}

# Networking 
variable "vpc_id" {
  description = "VPC ID for ECS service"
  type        = string
  default     = ""
}

variable "public_subnets" {
  description = "List of public subnet IDs (if existing VPC)"
  type        = list(string)
  default     = []
}

variable "private_subnets" {
  description = "List of private subnet IDs (if existing VPC)"
  type        = list(string)
  default     = []
}
variable "region" {
  description = "AWS region for all resources"
  type        = string
  default     = "ap-south-1"
}
