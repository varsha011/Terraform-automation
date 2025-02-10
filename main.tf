provider "google" {
  credentials = file("C:/Users/EK013W/Music/Terraform/terraform-key.json") 
  project     = var.project_id
  region      = var.region
}

resource "google_compute_instance" "vm_instance" {
  name         = "terraform-vm"
  machine_type = "e2-micro"
  zone         = var.zone

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }

  network_interface {
    network = "default"
    access_config {
    }
  }
}
