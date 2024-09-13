resource "aws_instance" "terraform" {
    ami = "ami-09c813fb71547fc4f"
    instance_type = var.environment == "dev" ? "t3.micro" : "t3.small"
    vpc_security_group_ids = [aws_security_group.allow_ssh_terraform.id]

    tags = {
        Name = "terraform"
    }
}