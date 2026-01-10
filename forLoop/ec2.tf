resource "aws_instance" "terraform" {
  # for_each = toset(var.instances)
  for_each               = var.instances
  ami                    = each.value.ami
  instance_type          = each.value.instance_type
  vpc_security_group_ids = [aws_security_group.allow_all.id]
  tags = {
    Name = each.key
    # Name = each.value
    Terraform = true
  }
}

resource "aws_security_group" "allow_all" {
  name = "allow_all"

  ingress {
    from_port   = 0
    to_port     = 0
    protocol    = -1
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = -1
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "allow_all"
  }
}
