#Main.tf

/*
resource "google_project_iam_binding" "gke" {

  project = var.project


  for_each = toset([
    "roles/storage.objectViewer",
    "roles/container.nodeServiceAccount",
    "roles/logging.logWriter",
    "roles/monitoring.metricWriter",
    "roles/monitoring.viewer",

  ])
  role = each.key


  members = [
    "serviceAccount:${user.sa-platform-tf}"
  ]
}
*/

resource "google_project_service" "gcp_services" {
  for_each = toset(var.gcp_service_list)
  project = var.project
  disable_dependent_services=true
  service = each.key

}




module "vpc_with_subnets" {
  # invoke vpc_and_subnets module under modules directory
  source = "./module/vpc"

  # create vpc and subnet with the same name as cluster name
  vpc_name    = var.cluster_name
  subnet_name = var.cluster_name

  # region where the resources need to be created
  region = var.region


  cidrBlock = var.cidrBlock
  depends_on = [google_project_service.gcp_services]
}


module "gke_with_node_group" {
  # invoke gke module under modules directory
  source = "./module/gke"

  cluster_name = var.cluster_name
  #k8s_version  = var.k8s_version
  region       = var.region
  zone 			= var.zone
  nodepool_count    = var.nodepool_count
  network      = module.vpc_with_subnets.vpc_self_link
  subnetwork   = module.vpc_with_subnets.subnet_self_link
  depends_on = [google_project_service.gcp_services]
}


