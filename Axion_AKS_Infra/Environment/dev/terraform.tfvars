axion-rg1 = {
  rg1 = {
    name     = "axion-rg1"
    location = "East US"
  }
}

axion_aks1 = {
  aks1 = {
    name                = "axion-aks1"
    location            = "East US"
    resource_group_name = "axion-rg1"
    dns_prefix          = "axion-aks1"
  }
}