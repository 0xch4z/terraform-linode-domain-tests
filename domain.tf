terraform {
  required_version = ">= 0.12"
}

variable "domain" {
  default = "domain123.xyz"
}

variable "domain_soa_email" {
  default = "webmaster@example.com"
}

resource "linode_domain" "root" {
  type        = "master"
  domain      = var.domain
  soa_email   = var.domain_soa_email
}