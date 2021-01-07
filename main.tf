module "db" {
    google_credentials = var.google_credentials
    source = "./modules/db"
}