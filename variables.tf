variable "location" {
  description = "Location of resource group"
  type        = string

  default = "westeurope"

  validation {
    condition     = contains(["northeurope", "north europe", "westeurope", "west europe"], var.location)
    error_message = "Valide values - northeurope, westeurope."
  }
}