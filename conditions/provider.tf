terraform{
    required_providers {
        aws = {
            source = "hashicorps/aws"
            version = "6.27.0"
        }
    }
}

provider "aws" {
    region = "us-east-1"
}