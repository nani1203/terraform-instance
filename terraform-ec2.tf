provider "aws" {
  profile    = "terraform_user-1"
  access_key = "AKIA4BHZHQQA4JLVEQOV"
  secret_key = "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"
  region     = "ap-south-1"
}
resource "aws_instance" "demo-server" {
  ami                    = "ami-0b08bfc6ff7069aff"
  key_name               = "Terraform"
  instance_type          = "t2.micro"
  tags = {
    Name = "terraformdemo-1"
  }
}

