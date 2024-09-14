variable "ami_id" {
  type        = string
  default     = "ami-09c813fb71547fc4f"
  description = "This is the AMi id of dev ops practice"
}

variable "instance_type" {
  type        = string
  default     = "t3.micro"
  description = "description"
}

variable "tags" {
  type        = map
  default     = {
     Name = "backend"
     Project = "expense"
     Component = "backend"
     Environment = "DEV"
     Terraform = "true"

  }
 
}

variable "sg_name" {
  type        = string
  default     = "allow_sshh"
  
}

variable "sg_description" {
  type        = string
  default     = "Allow TLS inbound traffic and all outbound traffic"  
  
}

variable "from_port" {
  type        = number
  default     = 22
  
}

variable "to_port" {
  type        = number
  default     = 22
  
}

variable "protocol" {
 
  default     = "tcp"
 
}

variable "ingress_cidr" {
  type        = list(string)
  default     = ["0.0.0.0/0"]
 
}







