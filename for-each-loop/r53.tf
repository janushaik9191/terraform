resource "aws_route53_record" "expense" {
  zone_id  = var.zone_id
  for_each = aws_instance.expense
  # for frontend = meerjan.online(domain_name)
  # for mysql/backend = mysql/backend.meerjan.online
  name            = each.key == "frontend" ? var.domain_name : "${each.key}.${var.domain_name}"
  type            = "A"
  ttl             = 1
  records         = each.key == "frontend" ? [each.value.public_ip] : [each.value.private_ip]
  allow_overwrite = true
}