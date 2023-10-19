resource "tls_private_key" "youtube_private_key" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

resource "aws_key_pair" "youtube_key_pair" {
  key_name   = "youtube-private-key"
  public_key = tls_private_key.youtube_private_key.public_key_openssh
}