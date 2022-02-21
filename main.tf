provider "aws" {
  region = "us-east-1"
  access_key = "AKIA5WKYNKMS7VQI7U5Z"
  secret_key = "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"
}

resource "aws_insatnce" "firstec2" {
  ami = "ami-0341aeea105412b57"
  instance_type = "t2.micro"
}
