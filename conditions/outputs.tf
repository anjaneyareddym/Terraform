

output "public_ip" {
  value       = aws_instance.terraform.public_ip
  sensitive   = false
  description = "This is the public ip instance created"
  depends_on  = []
}

output "private_ip" {
  value       = aws_instance.terraform.private_ip
  sensitive   = false
  description = "This is the private ip instance created"
  depends_on  = []
}


