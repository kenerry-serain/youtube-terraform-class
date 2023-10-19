resource "aws_subnet" "youtube_public_subnet_1a" {
  vpc_id     = aws_vpc.youtube_vpc.id
  cidr_block = "10.0.1.0/24"
  availability_zone = "us-east-1a"
  map_public_ip_on_launch = true
  tags       = merge({ Name = "youtube-public-subnet-1a" }, var.tags)
}