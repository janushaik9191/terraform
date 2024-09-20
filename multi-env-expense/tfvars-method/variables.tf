variable "instances" {
  type = map(any)
}
variable "domain_name" {
  default = "meerjan.online"
}
variable "zone_id" {
  default = "Z03239512REJNS4HYE714"
}
variable "common_tags" {
  type = map(any)
  default = {
    Project   = "expense"
    Terraform = "true"
  }
}
variable "environment" {

}
variable "tags" {
  type = map(any)
}