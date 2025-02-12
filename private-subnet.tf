# Private Subnet
resource "aws_subnet" "private_subnet" {
  vpc_id            = aws_vpc.wordpress_vpc.id
  cidr_block        = var.private_subnet_cidr_block
  availability_zone = "us-east-1b"
  tags = {
    Name = "WordPress Private Subnet"
  }
}