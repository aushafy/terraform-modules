module "vpc-aushafy" {
    source  = "../modules/vpc"

    tags = {
        Name  = "vpc-aushafy"
    }
}