variable "ami_id" {
    default = "ami-09c813fb71547fc4f"
}

variable "instance_type" {
    default = "t3.micro"
}

variable "instances" {
    default = ["mongodb", "redis", "rabbitmq", "mysql", "catalogue", "cart", "user", "frontend", "shipping", "payment", "shipping"]
}

variable "zone_id" {
    default = "Z028151432MT6NLGG3PXL"
}
variable "domain_name" {
    default = "wasdaws.shop"
}