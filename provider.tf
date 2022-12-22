provider "vault" {
  # Configuration options
}


provider "google" {
  region  = var.gcp_region
  project = var.gcp_project_id
}

terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "4.47.0"
    }
    
     vault = {
      source = "hashicorp/vault"
      version = "3.11.0"
    }


    template = {
      source = "hashicorp/template"
      version = "2.2.0"
    }

  
}
}