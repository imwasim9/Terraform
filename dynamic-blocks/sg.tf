resource "aws_security_group" "allow_all" {
  name = "allow_all"

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  dynamic "ingress" {
    for_each = toset(var.ingress_ports)
    content {
      from_port   = 0
      to_port     = ingress.value #here ingress is a special keyword
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }
  }

  tags= {
    Name = "allow_all_dynamic_blocks"
  }
}
