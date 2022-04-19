variable "vm_size" {
  description = "Virtual machine size"
  type        = string
  default     = "Standard_B2s"
}

variable "prefix" {
  description = "The prefix which should be used for all resources"
  type        = string
  default     = "k8s"
}

variable "location" {
  description = "The Azure Region in which all resources should be created."
  type        = string
  default     = "Canada Central"
}