variable "common_tags" {
  default = {
    Project     = "roboshop"
    Environment = "prod"
    Terraform   = "true"
  }
}

variable "tags" {
  default = {
    Component = "shipping"
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

variable "iam_instance_profile" {
  default = "iamroleforec2creation"
  
}