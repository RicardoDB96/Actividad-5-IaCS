# Linux
variable "linux_instance_type" {
  default = "t2.micro"
}
variable "linux-ami" {
  default = "ami-05b10e08d247fb927" # AMI Linux
}

# Windows
variable "windows_instance_type" {
  default = "t2.medium"
}
variable "windows-ami" {
  default = "ami-001adaa5c3ee02e10" # AMI Windows 2022
}

# Generales
variable "key_name" {
  default = "vockey"
}