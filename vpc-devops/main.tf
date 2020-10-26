module "vpc-devops" {
    source  = "../modules/vpc"
    cidr_block = "172.17.0.0/16"
    tags = {
        Name  = "vpc-devops"
    }
}