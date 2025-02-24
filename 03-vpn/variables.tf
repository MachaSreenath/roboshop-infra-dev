variable "common_tags" {
  default = {
    Project     = "roboshop"
    Environment = "prod"
    Terraform   = "true"
  }
}

variable "project_name" {
  default = "roboshop2"
}

variable "environment" {
  default = "prod"
}