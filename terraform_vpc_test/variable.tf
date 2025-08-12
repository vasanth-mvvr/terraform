variable "common_tags" {
  default = {
    Name = "expense"
    environment = "dev"
    Terraform = "true"
  }
}
variable "project" {
  default = "expense"
}
variable "environment" {
  
default = "dev"
}

variable "public_subnet" {
  type = list
  default = ["10.0.1.0/24","10.0.2.0/24"]
}

variable "private_subnet" {
  type = list
  default = ["10.0.11.0/24","10.0.12.0/24"]
}
variable "database_subnet" {
  type = list
  default = ["10.0.21.0/24","10.0.22.0/24"]
}
