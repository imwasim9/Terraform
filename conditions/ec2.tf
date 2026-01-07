resource "aws_instance" "terraform"{
    ami = var.ami_id
    instance_type = var.env == "dev" ? var.instance_type : "t3.small"
    vpc_security_group_ids = [aws_security_group.allow_all.id]
    tags = {
        Name = "terraform"
        Terraform = "true"
    }
}

resource "aws_security_group" "allow_all" {
    name = "allow_all"

    egress {
        from_port = 0 # from port 0 to port 0 means all ports
        to_port = 0
        protocol = -1 # means all protocols
        cidr_blocks = ["0.0.0.0/0"] # internet
    }

    ingress {
        from_port = 0 # from port 0 to port 0 means all ports
        to_port = 0
        protocol = -1 # means all protocols
        cidr_blocks = ["0.0.0.0/0"] # internet
    }
    tags = {
        Name = "allow-all"
    }
}