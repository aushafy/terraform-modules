terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 2.70"
    }
  }
}

provider "aws" {
  profile = "default"
  region  = "ap-southeast-1"
}

resource "aws_instance" "instances" {
      ami                          = "${var.ami}"
      key_name                     = "${var.key_name}"
      subnet_id                    = "${var.subnet_id}"
      instance_type                = "${var.instance_type["t2-micro"]}"
      tags                         = {
          "Name" = "${var.tags["Name"]}"
        }

    provisioner "local-exec" {
       command = "sudo apt-get update"
    }

    provisioner "local-exec" {
       command = "${var.run_command}"     
    }
}