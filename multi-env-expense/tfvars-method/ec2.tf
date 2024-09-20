resource "aws_instance" "expense" {
    for_each = var.instances # this variable is map
    # for_each will give us a special variable with name each
    ami = "ami-09c813fb71547fc4f" # this AMI ID may change over the time
    instance_type = each.value
    vpc_security_group_ids = [aws_security_group.allow_ssh_expense.id]
    tags = merge(
        var.common_tags,
        var.tags,
        {
            Name = each.key
        }
    )
}