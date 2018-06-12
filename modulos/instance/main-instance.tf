resource "google_compute_instance" "default" {
  name = "${var.instance_name}"
  machine_type = "${var.machine_type}"
  zone = "${var.zone}"

  // Network Tags
  tags = ["instance", "test"]

  boot_disk {
      initialize_params {
          image = "debian-cloud/debian-9"
          size = "20"
          type = "pd-ssd"
      }
  }

  attached_disk {
      size="100"
      type = "pd-ssd"
  }

  network_interface {
      network = "default"
      // ${var.network_instance}
  }

  metadata {
      enviroment = "${var.enviroment}"
  }
}
