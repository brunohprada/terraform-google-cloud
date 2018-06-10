resource "google_compute_instance" "default" {
  name = "${var.projeto}-${var.instance_name}"
  machine_type = "${var.machine_type}"
  zone = "${var.zone}"

  tags = ["instance", "test"]

  boot_disk {
      initialize_params {
          image = "debian-cloud/debian-9"
      }
  }

  network_interface {
      network = "${var.prefix_name}-${var.network_name}"
  }

  metadata {
      instance = "test"
  }
}
