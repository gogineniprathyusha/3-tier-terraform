# Create a VPC
resource "aws_vpc" "VPC_EKS" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = "Main"
  }
}