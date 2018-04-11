variable "region" {
  default = "eu-west-1"
}
variable "Ubuntu16" {
  type = "map"
  default = {
    eu-west-1 = "ami-f90a4880" # Ireland
   }
  description = "AMI ID"
}
variable "aws_access_key" {
  #default = "insert your key here"
  description = "the aws access key"
}

variable "aws_secret_key" {
  #default = "insert your key here"
  description = "the aws secret key"
}

variable "vpc-fullcidr" {
    default = "10.1.0.0/16"
  description = "the vpc cdir"
}
variable "Subnet-Public-Appko-CIDR" {
  default = "10.1.1.0/24"
  description = "the cidr of the subnet"
}
variable "key_name" {
  default = "appko"
  description = "the ssh key to use in the EC2 machines"
}

