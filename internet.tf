resource "aws_internet_gateway" "public_gateway" {
  vpc_id = aws_vpc.first_vpc.id
}

