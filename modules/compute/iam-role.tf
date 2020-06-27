# data "template_file" "s3_web_policy" {
#   template = "${file("${path.module}/scrips/iam/web-ec2-policy.json")}"
#   vars = {
#     s3_bucket_arn = "${aws_instance.consul.private_ip}"
#   }
# }