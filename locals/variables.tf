variable "project" {
  default = "roboshop"
}

variable "environment" {
  default = "dev"
}

variable "common_tags" {
    type = map 
    default = {
        Terraform = true
        Project = "roboshop"
        Environment = "dev"
    }
}