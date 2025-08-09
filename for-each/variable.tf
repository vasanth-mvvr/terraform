variable "instance_names" {
    type = map

    default = {
        db = "t2.micro"
        backend = "t2.micro"
        frontend = "t2.micro"
    }
}

variable "common" {
    default = {
        Project = "expense"
        Environment = "dev"
        Terraform = "true" 
    }
}

variable "domain_name" {
  default = "vasanthreddy.space"
}