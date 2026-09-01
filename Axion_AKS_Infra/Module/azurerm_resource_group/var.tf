variable "axion-rg" {
    description = "resource group for axion cluster"
    type = map(object({
      name = string
      location = string
    }))
  
}