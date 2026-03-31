terraform {
  backend "gcs" {
    bucket = "state-9e5db6e014c72026"
    prefix = "dev"
  }

  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 5.0"
    }
    cloudflare = {
         source  = "cloudflare/cloudflare"
         version = "~> 4.0" # community still preferes 4 than 5 because of it's stabillity
    }
  }
}

provider "google" {
  project = var.gcp_project_id
  region  = var.region
}

provider "cloudflare" {
  api_token = var.cloudflare_token
}

resource "google_project_service" "apis" {
  for_each = toset([
    "container.googleapis.com",
    "compute.googleapis.com"
  ])
  service            = each.key
  disable_on_destroy = false
}
