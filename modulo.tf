module "vpc" {
  source = "modulos/vpc"
}
module "instance" {
  source = "instance"
}
