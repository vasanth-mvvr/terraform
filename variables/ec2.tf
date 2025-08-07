resource "aws_instance" "db" {
    ami = var.image_id
    instance_type = var.aws_instance
    vpc_security_group_ids = [aws_security_group.allow_ssh.id]
    tags = var.tags
}
resource "aws_security_group" "allow_ssh" {
    name = var.sg_name
    description = var.sg_name

    ingress{
        from_port = var.from_port_to_to_port
        to_port = var.from_port_to_to_port
        protocol = var.protocol
        cidr_blocks = var.cidr_blocks
    }

    egress{
        from_port = var.sg_port
        to_port = var.sg_port
        protocol = var.sg_protocol
        cidr_blocks = var.cidr_blocks
    }

    tags = var.sg_tags
}

