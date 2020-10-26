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

resource "aws_vpc" "vpc-aushafy" {
    cidr_block = "${var.cidr_block}"
    instance_tenancy = "${var.instance_tenancy}"
    enable_dns_hostnames = true
    enable_dns_support = true
    tags = {
        Name  = "${var.tags["Name"]}"
    }
}