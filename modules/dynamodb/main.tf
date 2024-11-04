resource "aws_dynamodb_table" "users" {

  name         = "Users"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "user_id"

  attribute {
    name = "user_id"
    type = "S"
  }

  tags = {
    Environment = "dev"
    Name        = "UsersTable"
  }

}
