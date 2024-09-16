resource "aws_instance" "expense" {
  count                  = length(var.instance_names)
  ami                    = data.aws_ami.joindevops.id
  instance_type          = var.instance_names[count.index] == "mysql" ? "t3.small" : "t3.micro"
  vpc_security_group_ids = [aws_security_group.allow_ssh_expense.id]

  tags = {
    Name = var.instance_names[count.index]
  }
}