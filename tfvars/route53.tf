resource "aws_route53_record" "TF_R53" {
  #count = 6
  count = length(var.Name)
  zone_id = var.zone_id
  name    = "${var.Name[count.index]}.hellodns.xyz"
  type    = "A"
  ttl     = 300
  records = var.Name[count.index] == "Web-dev" || var.Name[count.index] == "Web-prod" ? [aws_instance.TF_EC2[count.index].public_ip] : [aws_instance.TF_EC2[count.index].private_ip]
}