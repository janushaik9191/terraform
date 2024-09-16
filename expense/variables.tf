variable "instance_names" {
  type    = list(string)
  default = ["mysql", "backend", "frontend"]
}
variable "zone_id" {
  default = "Z03239512REJNS4HYE714"
}
variable "domain_name" {
  default = "meerjan.online"
}