locals {
  domain_name = "cpr85.online"
 zone_id ="Z06398699XM2ECJQJB98"
 instance_type =var.environment=="prod"?"t3.medium":"t3.micro"
}
