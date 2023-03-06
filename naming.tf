variable "environment" {
  description = "Environment (poc, dev, stg, prd, shr)"
  type        = string

  validation {
    condition     = length(var.environment) == 3 && can(regex("[(poc)(dev)(stg)(prd)(shr)]", lower(var.environment)))
    error_message = "Environment value must be 3 characters and one of thede characters: poc, dev, stg, prd, shr."
  }
}

variable "project" {
  description = "Project name"

  validation {
    condition     = length(var.project) >= 7
    error_message = "Project name value must be 7 characters or more."
  }
}

variable "sequence" {
  description = "Sequence number of the resource group, default 001"
  type        = string

  default = "001"

  validation {
    condition     = length(var.sequence) == 3 && can(regex("[0-9]{3}", lower(var.sequence)))
    error_message = "Sequence value must be 3 characters and only numbers."
  }
}



