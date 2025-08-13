###    VPC Variables    ###
variable "vpc_cidr_block" {
  type = string
  default = "10.0.0.0/16"
}

variable "vpc_instance" {
  type = string
  default = "default"
}
variable "vpc_hostnames" {
  type = bool
  default = true
}

variable "common_tags" {
  type = map
}

variable "project" {
  type = string
}
variable "environment" {
  type = string
}

## subnet ##
variable "public_subnet_cidrs" {
    type = list
  validation {
    condition = length(var.public_subnet_cidrs) == 2
    error_message = "Please ensure that you allocate two public subnets for high availability"
  }
}

variable "private_subnet_cidrs" {
  type = list
  validation {
    condition = length(var.private_subnet_cidrs) == 2
    error_message = "please enter two valid private cidrs"
  }
}

variable "database_subnet_cidrs" {
  type = list
  validation {
    condition = length(var.database_subnet_cidrs) == 2
    error_message = "please enter the two valid database cidrs"
  }
}

variable "is_peering_required" {
  type = bool
  default = false
}

variable "acceptor_vpc_id" {
  type = string
  default = ""
}