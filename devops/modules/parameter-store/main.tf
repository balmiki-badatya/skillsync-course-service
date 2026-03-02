resource "aws_ssm_parameter" "parameter" {
    for_each = var.parameters
  name        = each.value.name
  description = each.value.description
  type        = each.value.type
  value       = each.value.value

  tags = merge(
    {name = each.value.name},
    var.default_tags
  )
}