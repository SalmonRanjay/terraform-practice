variable "web_instance_type" {
    type = string
    description = "Choose instance type for your web"
    default = "t2.micro"
}

variable "web_tags" {
    type = map
    description = ""
    default = {
        Name  = "webserver"
    }
}

variable "web_ec2_count" {
    type = string
    description = "Number of ec2 instances for web"
    default = 2
}

variable "pub_sub_ids" {
    type = "list"
    default = [""]
}

variable "web_security_group" {
    type = string
    description = "WEB SECURITY GROUP"
}