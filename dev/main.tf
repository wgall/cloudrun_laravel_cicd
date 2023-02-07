terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.26.0"
    }
  }
  backend "gcs" {
    bucket = "wgall-labs"
    folder = "${var.project}"
  }
}
variable "project" {
    type = string
    default = "project"
}
variable "image" {
    type = string
    default = "project"
}
variable "tag" {
    type = string
    default = "tag"
}
provider "google" {
  project     = "labs-370214"
  region      = "europe-central2"
}