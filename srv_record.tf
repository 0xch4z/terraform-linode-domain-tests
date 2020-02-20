resource "linode_domain_record" "srv-oli" {
  domain_id   = linode_domain.root.id
  record_type = "SRV"
  name        = "myname"
  target      = "mytarget"
  service     = "myservice"
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
