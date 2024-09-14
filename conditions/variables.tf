
variable "environmernt" {

  default = "dev"

}
variable "ami_id" {
  type        = string
  default     = "ami-09c813fb71547fc4f"
  description = "This is the AMi id of dev ops practice"
}
