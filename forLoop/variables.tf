variable "ami_id" {
  default = "ami-09c813fb71547fc4f"
}

variable "instance_type" {
  default = "t3.micro"
}

variable "zone_id" {
    default = "Z028151432MT6NLGG3PXL"  
}

variable "domain_name" {
    default = "wasdaws.shop"  
}

variable "instances" {
  # type = list
  # default = ["mongodb", "catalogue"]
  type = map(object({
    instance_type = string
    ami           = string
  }))
  default = {
    mongodb = {
      instance_type = "t3.micro"
      ami           = "ami-09c813fb71547fc4f"
    }
  }
}
