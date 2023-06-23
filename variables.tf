variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
  default     = "ADDA84-CTP"
}

variable "resource_group_location" {
  description = "Location of the resource group"
  type        = string
  default     = "francecentral"
}

variable "virtual_network" {
  description = "Virtual network"
  type        = string
  default     = "network-tp4"
}

variable "subnet" {
  description = "Subnet"
  type        = string
  default     = "internal"
}
