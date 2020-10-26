module "ec2-instance" {
    source = "../modules/ec2"
    tags  = {
         "Name" = "jenkins-vm-tf"
    }
}