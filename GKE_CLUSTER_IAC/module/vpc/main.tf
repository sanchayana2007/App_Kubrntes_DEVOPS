resource "google_compute_network" "vpc" {
 
  name        = var.vpc_name
  description = var.vpc_description
  routing_mode                    = "REGIONAL"
  auto_create_subnetworks         = false
  mtu                             = 1460
  delete_default_routes_on_create = false

  
}


resource "google_compute_subnetwork" "subnet" {
  name          = var.subnet_name
  description   = var.subnet_description
  region        = var.region
  network       = google_compute_network.vpc.name
  ip_cidr_range = var.cidrBlock
}

