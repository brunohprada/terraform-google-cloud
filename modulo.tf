module "vpc" {
    // fonte
    source = "modulos/vpc"
    // VARIÁVEIS
    // exemplo: projeto-network
    prefix_name = "projeto"
    network_name = "network"
    // exemplo: projeto-subnetwork
    subnetwork_name = "subnetwork"
    network_cidr = "10.10.108.0/24"
    region = "southamerica-east1"
}
module "instance" {
    // fonte
    source = "modulos/instance"
    // VARIÁVEIS
    instance_name = "instance-test"
    machine_type = "n1-standard-1"
    zone = "southamerica-east1-a"
    network_instance = "projeto-subnetwork"
}