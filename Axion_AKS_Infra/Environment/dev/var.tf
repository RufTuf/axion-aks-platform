variable "axion-rg1" {
  description = "resource group for axion cluster"
  type = map(object({
    name     = string
    location = string
  }))

}

variable "axion_aks1" {

  description = "aks cluster"

  type = map(object({
    name                = string
    location            = string
    resource_group_name = string
    dns_prefix          = string
  }))
}