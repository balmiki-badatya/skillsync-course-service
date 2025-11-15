########################################### Common ########################################### 
variable "default_aws_region" {
  type        = string
  description = "Default AWS region"
}
variable "created_by" {
  type        = string
  description = "Created by"
}

variable "managed_by" {
  type        = string
  description = "Managed by"
}

variable "application" {
  type        = string
  description = "Application name"
}

########################################### ECR Variables ########################################### 
variable "ecr_repo_name" {
  type        = string
  description = "ECR repo name"
}

variable "image_tag_mutability" {
  type        = string
  description = "ECR repo mutability config"
}