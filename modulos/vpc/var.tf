variable "network_name" {
  description = "Criação do nome da VPC (Network)"
  default = "network"
}
variable "prefix_name" {
  description = "Esta variável será utilizada como prefixo antes dos nomes."
  default = "test"
}
variable "network_cidr" {
  description = "Range de IP para a subnet"
  default = "10.10.108.0/24"
}
variable "region" {
  description = "Região padrão para criação do ambiente de rede."
  default = "southamerica-east1"
}
variable "zone" {
  description = "Zona de disponibilidade para criação das subnets"
  default = "southamerica-east1-a"
}