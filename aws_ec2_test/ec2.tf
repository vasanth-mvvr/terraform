module "ec2-test" {
  source = "../aws_ec2_code"
  instance_type = "t2.micro"
  tags = {
    Name = "Module test"
    Terraform = "true"
  }
}