terraform {
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "6.27.0"
    }
  }

  backend "s3"{
    bucket = "remotestate-wasdaws"
    key = "remotestate_dynamic-blocks"
    use_lockfile = true
    encrypt = true
  }
}

provider "aws"{
    
}
