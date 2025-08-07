variable "image_id" {
    type = string
    default = "ami-09c813fb71547fc4f"
    description = "Ami image id"
  
}

variable "aws_instance" {
    default = "t3.micro"
    description = "Instance initialization"
  
}

variable "tags" {
  default = {
    Project = "expense"
    Environment = "dev"
    Name = "db"
    Module = "db"

  }
}

variable "sg_name" {
    type = string
    default = "allow_ssh"
    description = "Name of the security group allow_ssh"
}

variable "from_port_to_to_port" {
    default = 22
}
variable "protocol" {
    type = string
    default = "tcp"
}
variable "cidr_blocks" {
    type = list(string)
    default = [ ".0.0.0.0/0" ]
}
variable "sg_tags" {
  default = {
    Name = "allow_ssh"
    CreatedBy = "vasanth"
    }
}

variable "sg_protocol" {
  type = string
  default = "-1"
}

variable "sg_port" {
  type = number  
  default = 0
}