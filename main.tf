module "jx" {
  source  = "jenkins-x/jx/google"
  version = "1.2.5"
  gcp_project="pluralsight-jenkins-x-james"
  cluster_name = "ps-jx-cluster"
}

terraform {
  backend "gcs" {
    bucket = "ps-jx-terraform-state-files-james"
    prefix = "terraform/state"
  }
}
