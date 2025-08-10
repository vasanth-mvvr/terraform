resource "aws_instance" "db" {
  ami = "ami-09c813fb71547fc4f"
  vpc_security_group_ids = [ "sg-0aaab2bdfa4e9f45a" ]
  instance_type = "t2.micro"
  tags = {
    Name = "db"
  }
}