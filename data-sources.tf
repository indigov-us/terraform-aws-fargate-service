
data "aws_acm_certificate" "main" {
  domain      = var.acm_certificate_domain
  most_recent = true
}

data "aws_region" "current" {}
