output "origin_ca_certificates_id" {
  description = "Map of id values across all origin_ca_certificates, keyed the same as var.origin_ca_certificates except keys with no id are omitted"
  value       = { for k, v in cloudflare_origin_ca_certificate.origin_ca_certificates : k => v.id if v.id != null && length(v.id) > 0 }
}
output "origin_ca_certificates_certificate" {
  description = "Map of certificate values across all origin_ca_certificates, keyed the same as var.origin_ca_certificates except keys with no certificate are omitted"
  value       = { for k, v in cloudflare_origin_ca_certificate.origin_ca_certificates : k => v.certificate if v.certificate != null && length(v.certificate) > 0 }
}
output "origin_ca_certificates_csr" {
  description = "Map of csr values across all origin_ca_certificates, keyed the same as var.origin_ca_certificates except keys with no csr are omitted"
  value       = { for k, v in cloudflare_origin_ca_certificate.origin_ca_certificates : k => v.csr if v.csr != null && length(v.csr) > 0 }
}
output "origin_ca_certificates_expires_on" {
  description = "Map of expires_on values across all origin_ca_certificates, keyed the same as var.origin_ca_certificates except keys with no expires_on are omitted"
  value       = { for k, v in cloudflare_origin_ca_certificate.origin_ca_certificates : k => v.expires_on if v.expires_on != null && length(v.expires_on) > 0 }
}
output "origin_ca_certificates_hostnames" {
  description = "Map of hostnames values across all origin_ca_certificates, keyed the same as var.origin_ca_certificates except keys with no hostnames are omitted"
  value       = { for k, v in cloudflare_origin_ca_certificate.origin_ca_certificates : k => v.hostnames if v.hostnames != null && length(v.hostnames) > 0 }
}
output "origin_ca_certificates_request_type" {
  description = "Map of request_type values across all origin_ca_certificates, keyed the same as var.origin_ca_certificates except keys with no request_type are omitted"
  value       = { for k, v in cloudflare_origin_ca_certificate.origin_ca_certificates : k => v.request_type if v.request_type != null && length(v.request_type) > 0 }
}
output "origin_ca_certificates_requested_validity" {
  description = "Map of requested_validity values across all origin_ca_certificates, keyed the same as var.origin_ca_certificates except keys with no requested_validity are omitted"
  value       = { for k, v in cloudflare_origin_ca_certificate.origin_ca_certificates : k => v.requested_validity if v.requested_validity != null }
}

