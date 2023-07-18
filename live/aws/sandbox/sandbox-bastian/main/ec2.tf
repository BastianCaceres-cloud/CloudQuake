provider "aws" {
  region = "us-east-1"
}

resource "aws_vpc" "default" {
  cidr_block = "10.0.0.0/16"
}

resource "aws_subnet" "default" {
  vpc_id = aws_vpc.default.id
  cidr_block = "10.0.0.0/24"
}

resource "aws_instance" "ec2example" {
  ami = "ami-06ca3ca175f37dd66"
  instance_type = "t2.micro"
  subnet_id = aws_subnet.default.id
}
