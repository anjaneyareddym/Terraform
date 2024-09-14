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
  type = map
  default = {

    Project     = "expense"
    Environment = "dev"
    Terraform   = "true"


  }

}

