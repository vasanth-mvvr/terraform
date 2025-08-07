resource "aws_instance" "instance" {
    #count = 3
    #using length function
    count = length(var.instance_names)
    ami = "ami-09c813fb71547fc4f"
    instance_type = var.instance_names[count.index] == "db" ? "t3.micro" : "t2.micro"
    vpc_security_group_ids = [aws_security_group.allow_ssh.id]
    
    tags = {
      Name = var.instance_names[count.index]
    }
}
resource "aws_security_group" "allow_ssh"{
    name = "allow_ssh"
    description = "Allowing the security access"
    ingress{
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }

    egress{
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }

    tags = {
        Name = "allow_ssh"
        CreatedBy = "vasanth"
    }
}
