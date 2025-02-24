variable "common_tags" {
  default = {
    Project     = "roboshop"
    Environment = "prod"
    Terraform   = "true"
  }
}

variable "tags" {
  default = {
    Component = "cdn"
  }
}

variable "project_name" {
  default = "roboshop2"
}

variable "environment" {
  default = "prod"
}

variable "zone_name" {
  default = "forpractice.uno"
}