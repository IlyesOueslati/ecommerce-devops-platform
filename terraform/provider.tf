
# -------------------------------------------------------
# AWS Provider Configuration
# -------------------------------------------------------
# This defines the AWS region where infrastructure
# resources will be provisioned.
# -------------------------------------------------------

provider "aws" {
  region = var.aws_region
}
