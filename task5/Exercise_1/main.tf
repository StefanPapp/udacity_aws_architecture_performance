# TODO: Designate a cloud provider, region, and credentials
terraform {
  required_version = ">= 0.13"
}

provider "aws" {
  region = var.region
  access_key = var.access_key
  secret_key = var.secret_key
}
# TODO: provision 4 AWS t2.micro EC2 instances named Udacity T2
resource "aws_instance" "udacityt2" {
  count = 4
  ami           = "ami-03c3a7e4263fd998c" # Amazon Linux 2 AMI
  instance_type = "t2.micro"
  tags = merge(
    map(
      "Name", "Udacity T2_${count.index + 1}"
    )
  )
}


# TODO: provision 2 m4.large EC2 instances named Udacity M4
resource "aws_instance" "udacitym4" {
  count = 2 # change to 0 if you want to destroy them
  ami           = "ami-03c3a7e4263fd998c" # Amazon Linux 2 AMI
  instance_type = "m4.large"
  tags = merge(
    map(
      "Name", "Udacity M4_${count.index + 1}"
    )
  )
}