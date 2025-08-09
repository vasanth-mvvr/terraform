
resource "aws_security_group" "sg_group" {
    name = "sg_group"
    description = "allow security group access"

    dynamic "ingress" {
        for_each = var.inbound
        content { 
            from_port = ingress.value["port"]
            to_port = ingress.value["port"]
            protocol = ingress.value["protocol"]
            cidr_blocks = ingress.value["cidr_blocks"]
        }

    }
    egress {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }
}