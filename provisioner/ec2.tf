resource "aws_instance" "terraform"{
    ami = "ami-09c813fb71547fc4f"
    instance_type = "t3.micro"

    tags={
        Name = "terraform"
    }

    provisioner "local-exec"{
        command = "echo ${self.private_ip} > inventory"
        on_failure = continue
    }

    provisioner "local-exec"{
        command = "echo instance is destroyed"
        when = destroy
    }
}