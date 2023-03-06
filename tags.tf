variable "description" {
  description = "Tag - will allow the resource operator to provide additional context information describing the resource and its purpose"
  type        = string

  default = null
}

variable "deploymentpipeline" {
  description = "Tag - pipeline url that deploys the code, automatically injected by pipeline variable"
  type        = string
  default = null
}

variable "ownedby" {
  description = "Tag - the person who owned the resources"
  type        = string
}

variable "repository" {
  description = "Tag - repository where code is located, automatically injected by pipeline variable"
  type        = string
  default = null
}

locals {
  tags = {
    "description"        = var.description
    "deploymentpipeline" = var.deploymentpipeline
    "ownedby"            = var.ownedby
    "project"            = var.project
    "repository"         = var.repository
  }
}