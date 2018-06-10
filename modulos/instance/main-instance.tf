resource "google_compute_instance" "default" {
  name = "${var.instance_name}"
  machine_type = "${var.machine_type}"
  zone = "${var.zone}"

  tags = ["instance", "test"]

  boot_disk {
      initialize_params {
          image = "debian-cloud/debian-9"
      }
  }

  network_interface {
      network = "${var.network_instance}"
  }

  metadata {
      instance = "test"
  }
}
