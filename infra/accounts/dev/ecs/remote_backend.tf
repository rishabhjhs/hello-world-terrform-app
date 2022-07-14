terraform {
  backend "s3" {
    bucket         = "hello-world-terraform-state-1"
    key            = "dev/ecs/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "hello-world-state-locks-1"
    encrypt        = true
    profile        = "default"
  }
}
