resource "aws_vpc" "youtube_vpc" {
  cidr_block = "10.0.0.0/16"
  tags       = merge({ Name = "youtube-vpc" }, var.tags)
}
