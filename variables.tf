variable "domain_name" {
  description = "Domain name to add DNS entries for"
  type        = string
}

variable "cloudflare_zone_id" {
  description = "Cloudflare Zone to add DNS entries to"
  type        = string
}