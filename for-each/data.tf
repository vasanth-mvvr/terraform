data "aws_ami" "ami_info" {
  most_recent = true
  owners = ["973714476881"]
  filter {
    name = "name"
    values = "RHEL-9-DevOps-practice"
  }
  filter {
    name = "virtualization-type"
    values = ["hvm"]
  }
  filter {
    name = "root-device-type"
    values = [ "ebs" ]
  }
}