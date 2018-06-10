variable "instance_name" {
  description = "Nome da instância que será criada"
  default = "instance-test"
}
variable "machine_type" {
  description = "Tipo de máquina virtual"
  default = "n1-standard-1"
}
variable "zone" {
  description = "Zona utilizada para criação da máquina virtual"
  default = "southamerica-east1-a"
}
variable "network_instance" {
  description = "Definição da rede que a instância irá utilizar"
  default = "default"
}
