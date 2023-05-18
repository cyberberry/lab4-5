provider "aws" {
  access_key = "AKIATNRQVWD6ALMTCHVO"
  secret_key = "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"
  region     = "us-east-1"
}

resource "aws_instance" "webapp_instance" {
  ami           = "ami-007855ac798b5175e"
  instance_type = "t2.micro"
  key_name      = "keypair4-5lab"
  security_groups = ["sg-0bd87eaba6ad91c09"]

}

  security_groups = [aws_security_group.webapp_security_group.id]
}

resource "aws_security_group" "webapp_security_group" {
  name        = "WebAppSecurityGroup"
  description = "Security group for the web application"
  
  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

output "instance_public_ip" {
  value = aws_instance.webapp_instance.public_ip
}
