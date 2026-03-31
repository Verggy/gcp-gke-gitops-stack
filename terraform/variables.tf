variable "billing_account_id" {
  description = "GCP Billing account id"
  type        = string
  sensitive   = true
}

variable "org_id" {
  description = "GCP Organization id"
  type        = string
  sensitive   = true
}
variable "region" {
  description = "GCP region"
  type        = string
  default     = "europe-central2"
}

variable "gcp_project_id" {
  description = "Google cloud project id"
  type        = string
}

variable "cloudflare_token" {
  description = "Cloudflare token for using cf proivder, for DNS management"
  type        = string
  sensitive   = true
}

variable "cloudflare_zone_id" {
  description = "Cloudflare dns zone id"
  type        = string
  sensitive   = true
}

variable "environment" {
  description = "Environment in which resource will be deployed into (e.g. PROD, pre-prod, dev)"
  type        = string
  default     = "dev"
}
