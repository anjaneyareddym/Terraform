resource "aws_route53_record" "expense" {
  count   = length(var.instances_names)
  zone_id = var.zone_id
  name    = "${var.instances_names[count.index]}.${var.domain_name}"
  type    = "A"
  ttl     = 1
  records = [aws_instance.expense[count.index].private_ip]

}