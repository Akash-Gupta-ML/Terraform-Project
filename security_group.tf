resource "aws_security_group" "allow_ssh" {
  name        = "allow_ssh"
  description = "Security Group from TF"

  dynamic "ingress" {
    for_each = var.ports
    iterator = port

    content {
      description = "tls from vpc"
      cidr_blocks = ["0.0.0.0/0"]
      from_port   = port.value
      to_port     = port.value
      protocol    = "tcp"
    }
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  vpc_id = aws_vpc.first_vpc.id


}


