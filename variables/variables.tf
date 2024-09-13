variable "ami_id" {
    type = string
    description = "this is devops practice ami" # optional
    default = "ami-09c813fb71547fc4f"
}
variable "from_port" {
    type = number
    default = "22"
}
variable "to_port" {
    type = number
    default = "22"
}
variable "aws_security_group_name" {
    type = string
    default = "allow_ssh"
}
variable "ingress_cidr_blocks" {
    type = list(string)
    default = ["0.0.0.0/0"]
}
variable "protocol" {
    default = "tcp"
}
variable "instance_type" {
    default = "t3.micro"
}