terraform {
  backend "gcs" {
    bucket = "kserghei-secret"
    prefix = "terraform/state"
  }
}

module "gke_cluster" {
  source         = "github.com/kserghei2103/tf-google-gke-cluster"
  GOOGLE_REGION  = var.GOOGLE_REGION
  GOOGLE_PROJECT = var.GOOGLE_PROJECT
  GKE_NUM_NODES  = 2
}