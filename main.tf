terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

provider "aws" {
  region = "us-west-2"
}

resource "aws_lightsail_instance" "Valheim-Smior" {
  name              = "Valheim-Smior"
  availability_zone = "us-west-2"
  blueprint_id      = "string"
  bundle_id         = "string"
  key_pair_name     = "default"
  user_data         = "./Valhalla.sh"
  tags = {
    foo = "Valheim-Smior"
  }
}
