resource "google_compute_disk" "default" {
  name = "test-disk"
  type = "pd-ssd"
  zone = "${var.zone}"
  size = "50"
  labels {
      enviroment = ""
  }
}


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
      source = "test-disk"
      device_name = "data"
      mode = "READ_WRITE"
  }

  network_interface {
      network = "default"
      // ${var.network_instance}
  }

  metadata {
      enviroment = "${var.enviroment}"
  }

  depends_on = ["google_compute_disk.default"]
}