provider "registry.terraform.io/hashicorp/aws" {
  profile    = "terraform_user"
  access_key = "AKIA4BHZHQQA3TQAXW5F"
  secret_key = "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"
  region     = "ap-south-1"
}
resource "aws_instance" "terraform" {
  ami             = "ami-07d3a50bd29811cd1"
  instance_type   = "t2.micro"
  key_name        = "terraform_server"
  security_groups = ["${aws_security_group.terraformdemoSG.name}"]
}
resource "aws_security_group" "terraformdemoSG" {
  name        = "terraformdemoSG"
  description = "terraformdemoSG"
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
