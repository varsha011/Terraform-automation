terraform {
  backend "gcs" {
    bucket  = "terraform-state-bucket-terraformbq"
    prefix  = "terraform/state"
  }
}
