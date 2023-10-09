#backend variables
variable "state_bucket_name" {
  default = "demoo-state-bucket"
}

variable "state_table_name" {
  default = "demoo-state-table"
}

variable "aws-region" {
  default = "us-east-1"
}

#backend resources
resource "aws_s3_bucket" "state_bucket" {
  bucket = var.state_bucket_name
  tags = {
    Name = var.state_bucket_name
  }
}

resource "aws_dynamodb_table" "state_table" {
  name         = var.state_table_name
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "userID"

  attribute {
    name = "userID"
    type = "S"
  }
}

