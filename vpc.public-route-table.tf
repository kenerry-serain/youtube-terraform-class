resource "aws_route_table" "youtube_public_route_table" {
  vpc_id = aws_vpc.youtube_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.youtube_vpc_internet_gateway.id
  }

  tags = merge({ Name = "youtube-public-route-table" }, var.tags)
}

resource "aws_route_table_association" "youtube_public_route_table_association" {
  subnet_id      = aws_subnet.youtube_public_subnet_1a.id
  route_table_id = aws_route_table.youtube_public_route_table.id
}