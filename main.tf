provider "aws" {
  region = "ap-south-1"
}
resource "aws_instance" "myFirstinstance" {
  ami           = "ami-08df646e18b182346"
  instance_type = "t2.small"
  tags = {
    Name = "my-ec2"
  }
}

resource "aws_s3_bucket" "bucket1" {
  bucket = "31-jan-2023-umesh-393838949"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}
