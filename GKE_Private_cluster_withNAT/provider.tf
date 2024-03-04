provider "google" {
  project     = "devops-cicd-412116"
  region      = "us-central1"
}


terraform {
  
  backend "gcs" {
    bucket = "devops-gke-state"
    prefix = "terraform/state"
  }




  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 4.0"
    }
  }
}