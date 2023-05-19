
resource "aws_instance" "demo-creation" {
  ami                    = "ami-0b08bfc6ff7069aff"
  key_name               = "Terraform"
  instance_type          = "t2.micro"
  tags = {
    Name = "terraformdemo-3"
  }
}

