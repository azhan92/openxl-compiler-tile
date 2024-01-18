variable "crn" {
  type        = string
  description = "Power Systems Virtual Server CRN"
}
variable "memory" {
  type        = number
  default     = 4
  description = "The amount of memory that you want to assign to your instance in gigabytes"
}
variable "processors" {
  type        = number
  default     = 1.0
  description = "The number of vCPUs to assign to the VM as visible within the guest Operating System"
}
variable "instance_name" {
  type        = string
  default     = "my_test_vm"
  description = "The name to assign to the instance"
}
variable "processor_type" {
  type        = string
  default     = "shared"
  description = "The type of processor mode in which the VM will run with 'shared', 'capped' or 'dedicated'"
}
variable "sys_type" {
  type        = string
  default     = "s922"
  description = "The type of system on which to create the VM: 's922', 'e880', 'e980', 'e1080', or 's1022'"
}
variable "storage_type" {
  type        = string
  default     = "tier1"
  description = "The type of storage tier to assign for storage volume performance: 'tier1' or 'tier3'"
}
variable "ssh_key_name" {
  type        = string
  description = "The name of the public SSH RSA key to use when creating the instance, as defined for the selected Power Systems Virtual Server CRN"
}
variable "network_name" {
  type        = string
  description = "The network ID or name to assign to the instance, as defined for the selected Power Systems Virtual Server CRN"
}

variable "placement_group" {
  type        = string
  default     = "None"
  description = "The server placement group name where the instance will be placed, as defined for the selected Power Systems Virtual Server CRN"
}

variable "rhcos_import_image" {
  type        = bool 
  default     = true
  description = "Import image from Cloud Object Storage bucket" 
}

variable "service_instance_id" {
  type        = string
  description = "The GUID of the service instance associated with an account"
}

variable "rhcos_image_name" {
  type        = string
  default     = "openxltile-v17-01-01" 
  description = "The name of an image"
}  

variable "rhcos_import_bucket_region" {
  type        = string
  default     = "us-south"
  description = "Cloud Object Storage region" 
}

variable "rhcos_import_image_filename" {
  type        = string
  default     = "None" 
  description = "Cloud Object Storage filename"
}

variable "rhcos_image_access_key" {
  type        = string
  default     = "None" 
  description = "Cloud Object Storage access key"
}

variable "rhcos_image_secret_key" {
  type        = string
  default     = "None" 
  description = "Cloud Object Storage secret key"
}

variable "bucket_name" {
  type        = string 
  default     = "None"
  description = "Cloud Object Storage bucket name" 
}  
