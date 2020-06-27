locals {
  env_tag = {
    Environment = "${terraform.workspace}"
  }

  web_tags = "${merge(var.web_tags,local.env_tag)}"
}

data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-trusty-14.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"] # Canonical
}
data "aws_ami" "centos" {
  most_recent = true

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-2.0*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["137112412989"] # Canonical
}


data "aws_ami" "amzlinux" {

  most_recent = true

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-2.0*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["137112412989"]

}

resource "aws_instance" "web" {
  count         = "${var.web_ec2_count}"
  ami           = "${data.aws_ami.centos.id}"
  instance_type = "t2.micro"
  subnet_id     = "${var.pub_sub_ids[count.index]}"
  user_data     = "${file("${path.module}/apache.sh")}"
  vpc_security_group_ids = ["${var.web_security_group}"]

  tags = "${local.web_tags}"
}
