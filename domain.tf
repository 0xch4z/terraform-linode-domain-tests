terraform {
  required_version = ">= 0.12"
}

variable "domain" {
  default = "CHANGEME.4zbug.stj.io"
}

variable "domain_soa_email" {
  default = "webmaster@example.com"
}

resource "linode_domain" "root" {
  type        = "master"
  domain      = var.domain
  soa_email   = var.domain_soa_email
}