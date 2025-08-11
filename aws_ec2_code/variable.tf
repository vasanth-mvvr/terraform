variable "ami_id" {
    type = string
  default = "ami-09c813fb71547fc4f"
}

variable "instance_type" {
  type = string
  default = "t3.micro"
}
variable "sg_group" {
  type = list
  default = ["sg-0aaab2bdfa4e9f45a"]
}

variable "tags" {
  type = map
  default = {
    
  }
}