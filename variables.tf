variable "origin_ca_certificates" {
  description = <<EOT
Map of origin_ca_certificates, attributes below
Required:
    - csr
    - hostnames
    - request_type
Optional:
    - requested_validity
EOT

  type = map(object({
    csr                = string
    hostnames          = list(string)
    request_type       = string
    requested_validity = optional(number)
  }))
}

