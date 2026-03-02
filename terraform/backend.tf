# -------------------------------------------------------
# Remote Backend Configuration
# -------------------------------------------------------
# Stores Terraform state in S3 and enables state locking
# using DynamoDB.
# -------------------------------------------------------

terraform {
  backend "s3" {
    bucket         = "my-terraform-state-bucket"
    key            = "ecommerce/terraform.tfstate"
    region         = "eu-central-1"
    dynamodb_table = "terraform-lock"
    encrypt        = true
  }
}
