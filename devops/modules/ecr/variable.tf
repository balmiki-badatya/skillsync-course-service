variable "ecr_config" {
  type = object({
    image_tag_mutability = string
    ecr_repo_name        = string
    default_tags         = map(string)
  })
}