resource "aws_dynamodb_table" "basic-dynamodb-table" {
  name           = "topics"
  billing_mode   = "PROVISIONED"
  read_capacity  = 20
  write_capacity = 20
  hash_key       = "UserId"
  range_key      = "GameTitle"

  attribute {
    name = "topic"
    type = "S"
  }

  attribute {
    name = "subtopic"
    type = "M"
  }

  attribute {
    name = "is_completed"
    type = "N"
  }

  ttl {
    attribute_name = "TimeToExist"
    enabled        = true
  }

  global_secondary_index {
    name               = "TopicIndex"
    hash_key           = "topic"
    range_key          = "TopScore"
    write_capacity     = 10
    read_capacity      = 10
    projection_type    = "INCLUDE"
    non_key_attributes = ["UserId"]
  }

  tags = {
    Name        = "dynamodb-table-1"
    Environment = "production"
  }
}