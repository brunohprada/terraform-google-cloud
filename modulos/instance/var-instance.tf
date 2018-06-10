variable "projeto" {
  description = "Nome do projeto será utilizado como prefixo"
  default = "projeto"
}
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
