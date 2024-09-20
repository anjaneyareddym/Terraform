variable "instances_names" {
  type    = list(string)
  default = ["mysql", "backend", "frontend"]

}

variable "domain_name" {
  type    = string
  default = "cpr85.online"

}

variable "zone_id" {
  type    = string
  default = "Z06398699XM2ECJQJB98"

}


