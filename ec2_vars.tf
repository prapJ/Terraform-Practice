variable "instance_type" {
  type = string
  default = "t2.micro"
}

variable "subnet_id" {
  type = string
  default = "subnet-0b947dd094493457d"
}

variable "public_address" {
  type = bool
  default = true
}

