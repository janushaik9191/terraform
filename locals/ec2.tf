resource "aws_instance" "locals" {
  count                  = length(var.instance_names)
  ami                    = data.aws_ami.joindevops.id
  instance_type          = local.instance_type
  vpc_security_group_ids = [aws_security_group.allow_ssh_locals.id]

  tags = {
    Name = var.instance_names[count.index]
  }
}
