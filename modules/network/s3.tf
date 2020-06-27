# resource "aws_s3_bucket" "my_bucket" {
#   bucket            = "${var.my_app_s3_bucket}"
#   acl = "private"
#   region = "${var.region}"

#   tags = {
#     Name = "JenkinsBuild-app-de"
#     Environment = "${terraform.workspace}"
#   }
# }