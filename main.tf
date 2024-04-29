locals {
  placement_group = [for x in data.ibm_pi_placement_groups.cloud_instance_groups.placement_groups : x if x.name == var.placement_group]
  placement_group_id = length(local.placement_group) > 0 ? local.placement_group[0].id : ""
}

data "ibm_pi_placement_groups" "cloud_instance_groups" {
  pi_cloud_instance_id = local.pid
} 

data "ibm_pi_key" "key" {
  pi_cloud_instance_id = local.pid
  pi_key_name          = var.ssh_key_name
}

data "ibm_pi_network" "power_network" {
  pi_cloud_instance_id = local.pid
  pi_network_name      = var.network_name
}
    
resource "ibm_pi_image" "rhcos_image_import" {
  pi_image_name             = var.rhcos_image_name
  pi_cloud_instance_id      = var.service_instance_id
  pi_image_bucket_name      = "open-xl-bucket"
  pi_image_bucket_region    = "us-south"
  pi_image_bucket_file_name = "open-xl-image.ova.gz"
  pi_image_storage_type     = "tier3"
  pi_image_bucket_access    = "public"
}
