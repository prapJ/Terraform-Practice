resource "aws_instance" "instance" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = var.instance_type
  subnet_id   = aws_subnet.public_subnet.id
#subnet_id = var.subnet_id
  associate_public_ip_address = var.public_address
  tags = {
    Name = "Tera-Instance"
  }
}

data "aws_ami" "ubuntu" {
  most_recent = true
  filter {
  name   = "name"
  values = ["ubuntu/images/hvm-ssd/ubuntu-bionic-18.04-amd64-server-*"]
  }
  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
  owners = ["099720109477"] 
}
