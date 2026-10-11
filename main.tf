resource "cloudflare_origin_ca_certificate" "origin_ca_certificates" {
  for_each = var.origin_ca_certificates

  csr                = each.value.csr
  hostnames          = each.value.hostnames
  request_type       = each.value.request_type
  requested_validity = each.value.requested_validity
}

