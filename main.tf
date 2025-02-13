# Provider Configuration
# Specifies the AWS provider and region for Terraform to manage resources in.
provider "aws" {
  region = "us-east-1"
}

# Configure the S3 backend for storing the Terraform state
terraform {
  backend "s3" {
    bucket         = "github-tf-rds-wp-activity"
    key            = "tfstate-tf-rds-wp-act"
    region         = "us-east-1"
    encrypt = false
  }
}

# Associate Public Subnet with Public Route Table
resource "aws_route_table_association" "public_rta" {
  subnet_id      = aws_subnet.public_subnet.id
  route_table_id = aws_route_table.public_rt.id
}



