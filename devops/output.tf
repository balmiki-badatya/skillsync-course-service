###################################### ECR output ######################################
output "ECR_details" {
  description = "ECR repo details"
  value       = module.ecr.ecr_repo_details
}
#########################################################################################
