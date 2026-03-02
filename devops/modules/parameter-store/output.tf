output "parameter_details"{
    description = "Generated parameter details"
    value = aws_ssm_parameter.parameter[*].arn
}