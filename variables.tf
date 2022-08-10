variable "domain_name" {
  description = "Domain name to add DNS entries for"
  type        = string
}

variable "cloudflare_zone_id" {
  description = "Cloudflare Zone to add DNS entries to"
  type        = string
}

variable "service_cname_redirect" {
  description = "What CNAME to redirect service requests to (GOOGLE = ghs.google.com, GOOGLE_HOSTED = ghs.googlehosted.com)"
  type        = string
  default     = "GOOGLE"

  validation {
    condition = contains(["GOOGLE", "GOOGLE_HOSTED"], var.service_cname_redirect)
    error_message = "Must be either GOOGLE (for ghs.google.com) or GOOGLE_HOSTED (for ghs.googlehosted.com)"
  }
}
