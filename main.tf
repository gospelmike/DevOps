# Configure the AWS Provider
provider "aws" {
  region                  = "us-east-1"
}

# Create vpc
resource "aws_vpc" "vpc" {
  cidr_block              = "10.0.0.0/16"
  instance_tenancy        = "default"
  enable_dns_hostnames    = true

  tags      = {
    Name    = "Demo"
  }
}
