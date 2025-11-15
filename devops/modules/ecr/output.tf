output "ecr_repo_details" {
  value = {
    arn            = aws_ecr_repository.ecr_course_service.arn
    repository_id  = aws_ecr_repository.ecr_course_service.registry_id
    repository_url = aws_ecr_repository.ecr_course_service.repository_url
  }

}