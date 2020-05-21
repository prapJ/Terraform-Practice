variable "vpc_cidr" {
  type        = string
  default     = "10.0.0.0/16"
}

variable "region" {
  type = string
  default = "us-east-1"
}

variable "public_subnet_cidr" {
  type = string
  default = "10.0.1.0/24"
}

variable "pub_sub_az" {
  type = string
  default = "us-east-1a"
}

variable "instance_type" {
  type = string
  default = "t2.micro"
}

variable "public_address" {
  type = bool
  default = true
}

