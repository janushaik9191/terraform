output "instance_ip_addr" {
  value = aws_instance.terraform.public_ip
  description = "this is private ip address of instance created"
}
