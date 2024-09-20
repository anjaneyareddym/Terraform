resource "aws_route53_record" "expense" {

  count   = length(var.instances_names)
  zone_id = local.zone_id
  name    = var.instances_names[count.index] == "frontend" ? local.domain_name : "${var.instances_names[count.index]}.${local.domain_name}"

  type = "A"
  ttl  = 1
  #   records = [aws_instance.expense[count.index].private_ip]
  records         = var.instances_names[count.index] == "frontend" ? [aws_instance.terraform[count.index].public_ip] : [aws_instance.terraform[count.index].private_ip]
  allow_overwrite = true


}