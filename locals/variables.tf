variable "instance_names" {
  type        = list(string)
  default     = ["mysql", "banckend", "frontend"]
  description = "these are the 3 instance names"
}
# variable "domain_name"{
#     default = "meerjan.online"
# }
# variable "zone_id" {
#     default "Z09912121MS725XSKH1TG"
# }
variable "environment" {
  default = "prod"
}