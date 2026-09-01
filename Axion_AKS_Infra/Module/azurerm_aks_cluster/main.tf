resource "azurerm_kubernetes_cluster" "axion" {

  for_each = var.axion_aks

  name                = each.value.name
  location            = each.value.location
  resource_group_name = each.value.resource_group_name
  dns_prefix          = each.value.dns_prefix

  default_node_pool {
    name       = "default"
    node_count = 2
    vm_size    = "Standard_B2s"
  }

  identity {
    type = "SystemAssigned"
  }

  node_provisioning_profile {
  mode = "Auto"
}

  tags = {
    Environment = "Development"
  }
}






