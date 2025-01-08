resource "aws_acm_certificate" "Micro_Cert" {
  domain_name       = "*.markettest.store"
  validation_method = "DNS"
  key_algorithm     = "RSA_2048"
  tags = {
    Name = "micro-cert"
  }
  lifecycle {
    create_before_destroy = true
  }
}

resource "aws_acm_certificate_validation" "Micro_Cert_Validation" {
  certificate_arn         = aws_acm_certificate.Micro_Cert.arn
  validation_record_fqdns = [for record in var.route53_records : record.fqdn]
}
