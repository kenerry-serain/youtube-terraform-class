resource "aws_internet_gateway" "youtube_vpc_internet_gateway" {
  vpc_id = aws_vpc.youtube_vpc.id
  tags       = merge({ Name = "youtube-vpc-internet-gateway" }, var.tags)
}