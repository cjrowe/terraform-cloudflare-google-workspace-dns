resource "cloudflare_record" "mx" {
  zone_id  = var.cloudflare_zone_id
  name     = var.domain_name
  value    = "aspmx.l.google.com"
  type     = "MX"
  priority = 1
}

resource "cloudflare_record" "mx_alt_1" {
  zone_id  = var.cloudflare_zone_id
  name     = var.domain_name
  value    = "alt1.aspmx.l.google.com"
  type     = "MX"
  priority = 5
}

resource "cloudflare_record" "mx_alt_2" {
  zone_id  = var.cloudflare_zone_id
  name     = var.domain_name
  value    = "alt2.aspmx.l.google.com"
  type     = "MX"
  priority = 5
}

resource "cloudflare_record" "mx_alt_3" {
  zone_id  = var.cloudflare_zone_id
  name     = var.domain_name
  value    = "alt3.aspmx.l.google.com"
  type     = "MX"
  priority = 10
}

resource "cloudflare_record" "mx_alt_4" {
  zone_id  = var.cloudflare_zone_id
  name     = var.domain_name
  value    = "alt4.aspmx.l.google.com"
  type     = "MX"
  priority = 10
}

resource "cloudflare_record" "calendar_cname" {
  name    = "calendar"
  value   = "ghs.google.com"
  type    = "CNAME"
  zone_id = var.cloudflare_zone_id
}

resource "cloudflare_record" "contacts_cname" {
  name    = "contacts"
  value   = "ghs.google.com"
  type    = "CNAME"
  zone_id = var.cloudflare_zone_id
}

resource "cloudflare_record" "docs_cname" {
  name    = "docs"
  value   = "ghs.google.com"
  type    = "CNAME"
  zone_id = var.cloudflare_zone_id
}

resource "cloudflare_record" "mail_cname" {
  name    = "mail"
  value   = "ghs.google.com"
  type    = "CNAME"
  zone_id = var.cloudflare_zone_id
}