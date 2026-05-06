terraform {
  backend "gcs" {
    bucket = "<tf-state-bucket>"
    prefix = "prod"
  }
}
