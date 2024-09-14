variable "instances_names" {
  type    = list(string)
  default = ["mysql", "backend", "frontend"]

}

variable "ami_id" {
  type        = string
  default     = "ami-09c813fb71547fc4f"
  description = "This is the AMi id of dev ops practice"
}

variable "common_tags" {
  type = map(any)
  default = {

    Project     = "expense"
    Environment = "dev"
    Terraform   = "true"


  }

}

variable "zone_id" {
  type    = string
  default = "Z06398699XM2ECJQJB98"

}

variable "domain_name" {
  type    = string
  default = "cpr85.online"

}



