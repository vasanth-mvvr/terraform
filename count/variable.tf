variable "instance_names" {
  type = list
  default = ["db","backend","frontend"]
}

variable "instance_type" {
  default = "db"
}