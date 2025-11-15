data "aws_caller_identity" "caller_identity" {}

locals {
  default_tags = {
    region      = var.default_aws_region
    created_by  = var.created_by
    managed_by  = var.managed_by
    application = var.application
  }
}

module "ecr" {
  source = "./modules/ecr"
  ecr_config = {
    image_tag_mutability = var.image_tag_mutability
    ecr_repo_name        = var.ecr_repo_name
    default_tags         = local.default_tags
  }

}