data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"]
}

resource "aws_instance" "youtube_instance" {
  ami                    = data.aws_ami.ubuntu.id
  key_name               = aws_key_pair.youtube_key_pair.key_name
  subnet_id              = aws_subnet.youtube_public_subnet_1a.id
  vpc_security_group_ids = [aws_security_group.allow_ssh.id]
  instance_type          = "t3.micro"
  tags                   = merge({ Name = "youtube-instance" }, var.tags)
}
