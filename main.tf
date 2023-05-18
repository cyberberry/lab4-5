provider "aws" {
  access_key = "AKIATNRQVWD6ALMTCHVO"
  secret_key = "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"
  region     = "us-east-1"
}

resource "aws_instance" "lab6" {
  ami           = "ami-007855ac798b5175e" 
  instance_type = "t2.micro"

  tags = {
    Name = "lab6-instance"
  }
}

resource "aws_security_group" "security_group_lab6" {
  name        = "security_group_lab6"
  description = "security group for lab6"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
