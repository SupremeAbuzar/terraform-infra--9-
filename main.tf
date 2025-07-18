provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "ubuntu_instance" {
  ami           = "ami-0c55b159cbfafe1f0"  # Example Ubuntu AMI for us-east-1
  instance_type = "t2.micro"
  key_name      = var.key_name

  vpc_security_group_ids = [aws_security_group.custom_sg.id]

  tags = {
    Name = "TerraformUbuntuInstance"
  }
}

resource "aws_security_group" "custom_sg" {
  name        = "custom_security_group"
  description = "Allow inbound traffic on custom port"

  ingress {
    from_port   = var.custom_port
    to_port     = var.custom_port
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
