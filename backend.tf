terraform {
  backend "s3" {
    region         = "us-east-1"
    bucket         = "sbox-remote-backend"
    key            = "sbox-remote-backend/tfstate"
    dynamodb_table = "my_lock_table"
  }
}