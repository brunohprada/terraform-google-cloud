# TERRAFORM

## MANUAL - GOOGLE CLOUD PLATFORM
---
# PARA CRIAR A VPC
* google_compute_network
`[prefix_name]`-`[network_name]`
exemplo: **projeto-network**

* google_compute_subnetwork
`[prefix_name]`-`[subnetwork_name]`
exemplo: **projeto-subnetwork**
`[network_cidr]`
exemplo: **10.10.108.0/24**
`[region]`
exemplo: **southamerica-east1**

> _projeto-network - projeto-subnetwork (10.10.108.0/24) - southamerica-east1_