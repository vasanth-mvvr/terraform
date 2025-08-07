locals {
  ami_id = "ami-09c813fb71547fc4f"
  sg_id = "sg-0aaab2bdfa4e9f45a"
  # instance_type = "t2.micro"
  instance_type = var.instance_names == "db" ? "t3.micro": "t2.micro"
  tags = {
    Name = "db"
  }
}