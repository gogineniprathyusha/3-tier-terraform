resource "aws_nat_gateway" "natgw" {
  allocation_id = aws_eip.eip_123.id
  subnet_id     = aws_subnet.web-subnet-1.id
  
  tags = {
    Name = "gw NAT"
  }
}