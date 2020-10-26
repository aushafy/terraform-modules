variable "cidr_block" {
    default = "172.16.0.0/16"
}

variable "instance_tenancy" {
    default =  "default"
}

variable "tags" {
    default = {
        Name = "vpc-aushafy"
    }
    
}