#Create EC2 Instance
resource "aws_instance" "server1" {
  ami                    = var.ami
  instance_type          = var.instance_type
  availability_zone      = "us-east-1a"
  vpc_security_group_ids = [aws_security_group.webserver-sg.id]
  subnet_id              = aws_subnet.web-subnet-1.id
  user_data              = file("softwareinstall.sh")

  tags = {
    Name = "Web"
  }

}

resource "aws_instance" "server2" {
  ami                    = var.ami
  instance_type          = var.instance_type
  availability_zone      = "us-east-1b"
  vpc_security_group_ids = [aws_security_group.webserver-sg.id]
  subnet_id              = aws_subnet.web-subnet-2.id
  user_data              = file("softwareinstall.sh")

  tags = {
    Name = "Web"
  }

}