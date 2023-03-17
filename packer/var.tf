variable "image_id" {
    type        =  string
    description = "This is amazon  machine image id" 
    default     =  "ami-0557a15b87f6559cf"
}
variable "ami_name" {
    type        = string
    description = "This AMI name represent neme of the Golden AMI"
    default     = "Test instance"
}
variable "instance_type" {
    type        = string
    description = "There is instance type"
    default     = "t2.micro"
}
variable "region" {
    type        = string
    description = "there we're definding in which region we're creating our Golden AMI"
    default     = "us-east-1"
}
variable "ssh_username" {
    type        = string
    description = "User name to ssh  our  machine"
    default     = "ubuntu"
}
variable "vpc_id" {
    type        = string
    description = "This VPC we are attaching to our machine"
    default     = "vpc-0b97448f29df048bd" 
}
variable "subnet_id" {
    type        = string
    description = "this represent to which subnet we attech our instance"
    default     = "subnet-088121577a178d9e2"
}
variable "security_group_id" {
    type        = string
    description = "this is security group id"
    default     = "sg-0a6964789e2d5ac34"
}