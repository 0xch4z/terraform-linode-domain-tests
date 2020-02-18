resource "linode_domain_record" "srv-oli" {
  domain_id   = linode_domain.root.id
  name        = "oli"
  record_type = "SRV"
  target      = "oli-backend-1"
  service     = "oli"
  protocol    = "tcp"
  port        = 1001
  priority    = 10
  weight      = 0

  lifecycle {
    ignore_changes = [
      priority,
      weight,
    ]
  }
}
