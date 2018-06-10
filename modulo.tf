module "vpc" {
  source = "/modulos/vpc"
  prefix_name = "test-modulo"
  network_name = "rede"
  subnetwork_name = "subrede"
}
