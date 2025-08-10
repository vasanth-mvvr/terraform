resource "aws_instance" "db" {
  ami = "ami-09c813fb71547fc4f"
  vpc_security_group_ids = [ "sg-0aaab2bdfa4e9f45a" ]
  instance_type = "t2.micro"
  tags = {
    Name = "db"
  }

  # Provisioners will run only wnhrn the resorces are creating it will not run once the resoutrces are created
#   provisioner "local-exec" {
#     command = "echo ${self.private_ip} > private_ip.txt"    #self is aws_instance.web
#   }
#   provisioner "local-exec" {
#     command = "ansible-playbook -i private_ip.txt web.yaml"
#   }


  # For remote connection you need to have access to ssh
  connection {
    type = "ssh"
    user = "ec2-user"
    password = "DevOps321"
    host = self.public_ip
  }

  provisioner "remote-exec" {
    inline = [ 
        "sudo dnf install ansible -y",
        "sudo dnf install nginx -y"
     ]
    
  }
}