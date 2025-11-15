resource "aws_ecr_repository" "ecr_course_service" {
  name                 = var.ecr_config.ecr_repo_name
  image_tag_mutability = var.ecr_config.image_tag_mutability

  tags = merge(
    {
      Name = var.ecr_config.ecr_repo_name
    },
    var.ecr_config.default_tags
  )
}