# Create local varianle for subnet names
locals {
    az_names = "${data.aws_availability_zones.azs.names}"
}

resource "aws_subnet" "public"{
    count               = "${length(local.az_names)}"
    vpc_id              = "${aws_vpc.my_app.id}"
    cidr_block          = "${cidrsubnet(var.vpc_cidr, 8,count.index)}"
    availability_zone   = "${local.az_names[count.index]}"

    tags = {
        Name            = "PublicSubnet-${count.index + 1}"
    }
}

# idr function
// take cidr block of vpc and add 8 bits to it incrementally by 8
# "${cidrsubnet("10.20.1.0/16", 8,1)} -> 10.20.1.0/24 -> 10.20.2.0/24