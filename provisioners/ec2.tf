resource "aws_instance" "provisioners" {
  ami                    = "ami-09c813fb71547fc4f"
  instance_type          = "t3.micro"
  vpc_security_group_ids = [aws_security_group.provisioners.id]
  tags = {
    Name = "provisioners"
  }
# for local execution
  provisioner "local-exec" {
    command = "echo The server's IP address is ${self.private_ip}"
  }
# for remote execution it needs to be connected
  connection {
    type     = "ssh"
    user     = "ec2-user"
    password = "DevOps321"
    host     = self.public_ip
  }

# provisioners will execute at the time of creation
  provisioner "remote-exec" {
    inline = [
      "sudo dnf install ansible -y",
      "sudo dnf install nginx -y",
      "sudo systemctl start nginx",
    ]
  }
# provisioners will execute at the time of destroy
  provisioner "remote-exec" {
    when = destroy
    inline = [
      "sudo systemctl stop nginx",
    ]
  }
}