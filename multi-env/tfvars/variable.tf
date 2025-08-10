variable "instance_names" {
  type = map
}

variable "environment" {
  default = "dev"
}

variable "common_tags" {
  default = {
    Project = "expense"
    terraform = "true"
  }

}
variable "domain_name" {
  default = "vasanthreddy.space"
}
variable "zone_id" {
  default = "Z03374861AS05ZNVFT1HH"
}