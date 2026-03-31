resource "google_compute_address" "ingress_ip" {
  name = "${var.environment}-ingress-ip"
  region = var.region
  lifecycle {
        prevent_destroy = true
  }
}

resource "cloudflare_record" "root" {
  zone_id = var.cloudflare_zone_id
  name    = "@"
  content = google_compute_address.ingress_ip.address
  type    = "A"
  ttl     = 1
  proxied = true
}

resource "cloudflare_record" "www" {
  zone_id = var.cloudflare_zone_id
  name    = "www"
  content = google_compute_address.ingress_ip.address
  type    = "A"
  ttl     = 1
  proxied = true
}

resource "cloudflare_record" "shop" {
  zone_id = var.cloudflare_zone_id
  name    = "shop"
  content = google_compute_address.ingress_ip.address
  type    = "A"
  ttl     = 3600
  proxied = false
}
