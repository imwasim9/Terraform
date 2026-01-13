terraform {
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "6.27.0"
    }
  }

  backend "s3"{
    bucket = "remotestate-wasdaws"
    key = "remotestate-locals-merge"
    region = "us-east-1"
    use_loclfile = true
    encrypt = true
  }
}

provider "aws"{
    
}