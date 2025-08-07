variable "image_id" {
    type = string
    default = "ami-09c813fb71547fc4f"
    description = "Ami image id"
  
}

# variable "aws_instance" {
#     default = "t3.micro" 
#     description = "Instance initialization"
  
# }

variable "instance_name" {
  default = "db"
}