terraform {
  backend "s3" {
    region         = "us-east-1"
    # profile        = "aws_backend_profile"
    bucket         = "sbox-remote-backend"
    key            = "sbox-remote-backend/tfstate"
    dynamodb_table = "my_lock_table"
  }
}