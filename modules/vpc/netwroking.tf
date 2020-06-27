resource "aws_vpc" "main" {
  cidr_block       = "${var.vpc_cidr}"
  instance_tenancy = "${var.tenancy}"

  tags = {
    Name = "main"
  }
}

variable "vpc_cidr" {
    default = "10.0.0.0/16"
}
variable "tenancy"{
    default = "dedicated"
}