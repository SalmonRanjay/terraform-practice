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