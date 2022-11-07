resource "aws_eip" "eip_123" {
  //instance = aws_subnet.web-subnet-1.id
  vpc      = true
}
