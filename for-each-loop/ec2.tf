resource "aws_instance" "expense" {
  for_each               = var.instances
  ami                    = "ami-09c813fb71547fc4f"
  instance_type          = each.value
  vpc_security_group_ids = [aws_security_group.allow_ssh_expense.id]

  tags = {
    Name = each.key
  }
}