// INSTRUÇÕES
// Se todas as variáveis abaixo forem mantidas, o código main-vpc.tf utilizará o arquivo de configuração var-vpc.tf
// código:
// terraform plan
// terraform apply
// terraform destroy

// variações do comando terraform para alteração das variáveis na linha de comando:
// terraform plan -var 

// google_compute_network provisionará uma VPC com o nome projeto-network
// var.prefix_name = projeto
// var.network_name = network
// Neste caso, name = projeto-network
resource "google_compute_network" "default" {
  name = "${var.prefix_name}-${var.network_name}"
  auto_create_subnetworks = "false"
}
// google_compute_subnetwork provisionará uma subnetwork dentro da VPC criada no código acima
// var.prefix_name = projeto
// var.subnetwork_name = subnetwork
// Neste caso, name = projeto-subnetwork
// var.network_cidr = 10.10.108.0/24
// var.region = southamerica-east1
resource "google_compute_subnetwork" "default" {
  name = "${var.prefix_name}-${var.subnetwork_name}"
  ip_cidr_range = "${var.network_cidr}"
  network = "${google_compute_network.default.self_link}"
  region = "${var.region}"
  private_ip_google_access = true
}