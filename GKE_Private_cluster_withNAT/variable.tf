variable "cluster_name" {
  type        = string

  } 

  variable "vpc_description" {
  type        = string
  description = "An optional description of this resource. The resource must be recreated to modify this field."
  default     = ""
}

 variable "project" {
  type        = string


  } 

variable "region" {
  type        = string

  } 

  variable "zone" {
  type        = string

  } 

variable "cidrBlock" {
  type        = string

  } 

variable "gcp_service_list" {
  description ="The list of apis necessary for the project"
  type = list(string)
  default = [
    "cloudresourcemanager.googleapis.com",
    "serviceusage.googleapis.com",
    "compute.googleapis.com",
    "iam.googleapis.com",
    "container.googleapis.com"
  ]
}

variable "nodepool_count" {
  type    = number
  
}
  

