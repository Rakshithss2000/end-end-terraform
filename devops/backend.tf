
terraform {
  backend "s3" {
    bucket = "jms43-terraform-backend"
    key    = "jmsth_jenkins.tfstate"
    region = "ap-south-1"
    encrypt = true
    dynamodb_table = "terraform-state-lock-dynamo"
    }
  }

