variable "parameters" {
    type = map(object({
        name = string
        description = string
        type = string
        value = string
        }
    ))

    description = "map of parameters, you can add a set with single element."
    sensitive = true
}

variable "default_tags"{
    type = map(string)
    description = "Default tags for the parameter."
}