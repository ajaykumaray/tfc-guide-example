provider "aws" {
  region     = "ap-northeast-1"
  access_key = "AKIA5WKYNKMSTQNLJ7D5"
  secret_key = "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"
}

data "aws_ami" "ami-050a677a0dbb257ab" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["941320131365"] # Canonical
}

resource "aws_instance" "ubuntu" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = var.instance_type

  tags = {
    Name = var.instance_name
  }
}
