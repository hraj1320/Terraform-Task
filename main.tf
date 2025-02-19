provider "aws" {
  alias  = "region1"
  region = "us-east-1"
}

provider "aws" {
  alias  = "region2"
  region = "us-west-2"
}

resource "aws_instance" "instance_region1" {
  provider    = aws.region1
  ami         = "ami-00b7c7d4689460eef"  # us-east-1 ke liye sahi AMI ID
  instance_type = "t2.micro"
  tags = {
    Name = "Instance-Region1"
  }
}

resource "aws_instance" "instance_region2" {
  provider    = aws.region2
  ami         = "ami-00dff3b01f99da94d"  # us-west-2 ke liye sahi AMI ID
  instance_type = "t2.micro"
  tags = {
    Name = "Instance-Region2"
  }
}

