# Public Subnet
resource "aws_subnet" "public_subnet" {
  vpc_id                  = aws_vpc.wordpress_vpc.id
  cidr_block              = var.public_subnet_cidr_block
  availability_zone       = "us-east-1a"
  map_public_ip_on_launch = true
  tags = {
    Name = "WordPress Public Subnet"
  }
}