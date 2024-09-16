resource "aws_security_group" "allow_ssh_expense" {
  name        = "allow_ssh"
  description = "allowing from port number 22"
  # outgoing trafic
  egress {
    from_port         = 0
    to_port           = 0
    protocol          = "-1"
    cidr_blocks       = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }
  # incoming trafic
  ingress {
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }
  tags = {
    Name = "expense"
  }
}