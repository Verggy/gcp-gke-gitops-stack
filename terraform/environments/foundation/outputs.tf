output "wif_provider_dev" {
  value = module.gh_oidc_dev.provider_name
}
output "wif_provider_prod" {
  value = module.gh_oidc_prod.provider_name
}
output "wif_service_account_dev" {
  value = "terraform@${var.dev_project_id}.iam.gserviceaccount.com"
}
output "wif_service_account_prod" {
  value = "terraform@${var.prod_project_id}.iam.gserviceaccount.com"
}
