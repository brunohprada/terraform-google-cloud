variable "prefix_name" {
  description = "Esta variável será utilizada como prefixo antes dos nomes."
  default = "projeto"
}
variable "network_name" {
  description = "Criação do nome da VPC (Network)"
  default = "network"
}
variable "subnetwork_name" {
  description = "Nome da subnetwork"
  default = "subnetwork"
}
variable "network_cidr" {
  description = "Range de IP para a subnet"
  default = "10.10.108.0/24"
}
variable "region" {
  description = "Região padrão para criação do ambiente de rede."
  default = "southamerica-east1"
}