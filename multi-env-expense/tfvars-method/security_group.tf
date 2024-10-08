resource "aws_security_group" "allow_ssh_expense" {
  name        = "allow_ssh_${var.environment}"
  description = "allowing from port number 22"

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }
  ingress {
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }
  tags = merge(
    var.common_tags,
    var.tags,
    {
      Name = "allow_ssh_${var.environment}"
    }
  )
}