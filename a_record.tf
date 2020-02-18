resource "linode_domain_record" "a-oli" {
  domain_id   = linode_domain.root.id
  name        = "oli"
  record_type = "A"
  target      = "127.0.0.1"
}
