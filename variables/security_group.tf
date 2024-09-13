resource "aws_security_group" "allow_ssh_terraform" {
    name = "aws_security_group_name"
    description = "allowing from port number 22"

egress{
    from_port       = 0
    to_port         = 0
    protocol        = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
}
ingress{
    from_port       = var.from_port
    to_port         = var.to_port
    protocol        = var.protocol
    cidr_blocks      = var.ingress_cidr_blocks
    ipv6_cidr_blocks = ["::/0"]
}
tags = {
    Name = "terraform"
       }
}