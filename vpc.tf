resource "aws_vpc" "vpc" {
  cidr_block = var.vpc_cidr
  tags = { 
    Name = "terraform vpc"
}
}

resource "aws_subnet" "public_subnet" {
  vpc_id = aws_vpc.vpc.id
  cidr_block = var.public_subnet_cidr
  availability_zone = var.pub_sub_az
  tags = {
     Name = "public_subnet"
    }
}
