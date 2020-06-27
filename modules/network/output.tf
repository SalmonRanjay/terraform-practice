# output "public_sg_name" {
#     value = "${aws_security_group.jenkins_public_sg.name}"
# }
# output "public_sg_id" {
#     value = "${aws_security_group.jenkins_public_sg.id}"
# }

output "pub_sub_ids" {
    value = "${local.pub_sub_ids}"
}

output "web_security_group" {
    value = "${aws_security_group.web_sg.id}"
}
