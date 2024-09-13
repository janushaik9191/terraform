resource "aws_instance" "terraform" {
  count = length(var.instance_names)
  ami = "ami-09c813fb71547fc4f"
  instance_type = "t3.micro"
  vpc_security_group_ids = [aws_security_group.allow_ssh_terraform.id]

  tags = {
    Name = var.instance_names[count.index]
  }
}
