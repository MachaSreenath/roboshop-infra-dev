variable "common_tags" {
  default = {
    Project     = "roboshop"
    Environment = "dev"
    Terraform   = "true"
  }
}

variable "tags" {
  default = {
    Component = "acm"
  }
}

variable "project_name" {
  default = "roboshop2"
}

variable "environment" {
  default = "dev"
}

variable "zone_name" {
  default = "forpractice.uno"
}