locals {
  domain_name   = "daws81s.online"
  zone_id       = "Z03239512REJNS4HYE714"
  instance_type = var.instance_names == "mysql" ? "t3.small" : "t3.micro"
  # count.index will not work in locals
}