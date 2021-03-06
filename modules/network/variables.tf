variable "vpc_cidr" {
    description         = "choose cidr for vpc"
    # type                = "string"
    default             = "10.20.0.0/16"
}

variable "region" {
    description         = "Choose region for your stack"
    # type                = "string"
    default             = "us-east-1"
}

variable "nat_amis" {
    type = map
    default = {
        us-east-1 = "ami-00a9d4a05375b2763"
        us-east-2 = "ami-00d1f8201864cc10c"
    }
}

variable "my_app_s3_bucket" {
    type = string
    description = "S3 bucket name"
}