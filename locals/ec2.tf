resource "aws_instance" "terraform"{
    ami = local.ami_id
    instance_type = local.instance_type
    tags = local.ec2_tags
}