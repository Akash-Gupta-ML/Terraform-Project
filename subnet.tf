resource "aws_subnet" "public_subnet" {
  cidr_block              = var.subnet_cidr
  vpc_id                  = aws_vpc.first_vpc.id
  availability_zone       = "us-east-1c"
  map_public_ip_on_launch = true
  tags                    = { Name = "Subnet-Public : Public Subnet 1" }

}
