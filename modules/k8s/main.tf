resource "aws_vpc" "K8s_vpc" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = "main-vpc"
  }
}

resource "aws_subnet" "K8s_subnet" {
  vpc_id            = aws_vpc.K8s_vpc.id
  cidr_block        = "10.0.1.0/24"
  availability_zone = "us-west-2a"

  tags = {
    Name = "main-subnet"
  }
}