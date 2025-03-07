
terraform {
  backend "s3" {
    bucket = "rakshith088"
    key    = "terraform.tfstate"
    region = "ap-south-1"
    encrypt = true
    dynamodb_table = "terraform"
    }
  }

