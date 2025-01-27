variable "common_tags" {
  default = {
    Project     = "roboshop"
    Environment = "dev"
    Terraform   = "true"
  }
}

variable "tags" {
  default = {
    Component = "app-alb"
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