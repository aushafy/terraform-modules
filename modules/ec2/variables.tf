variable "ami" {
    default = "ami-0c8e97a27be37adfd"
}

variable "key_name" {
    default = "sshaushafy"
}

variable "subnet_id" {
    default = "subnet-8c8646ea"
}

variable "instance_type" {
    type = "map"
    default = {
        t2-micro = "t2.micro",
        t2-medium = "t2.medium",
    }
}

variable "tags" {
    type = "map"
    default = {
        Name = "Instance-vm-tf"
    }
}

variable "run_command" {
    default = "sudo apt-get install python ansible"
}