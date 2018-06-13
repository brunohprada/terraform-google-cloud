resource "google_compute_disk" "default" {
  name = "${var.disk_name}-${count.index + 1}"
  type = "pd-ssd"
  zone = "${var.zone}"
  size = "50"
  labels {
      enviroment = ""
  }
}


resource "google_compute_instance" "default" {
  count = "${var.instance_count}"
  name = "${var.instance_name}-${count.index + 1}"
  machine_type = "${var.machine_type}"
  zone = "${var.zone}"

  // Network Tags
  tags = ["${var.instance_name}"]

  boot_disk {
      initialize_params {
          image = "debian-cloud/debian-9"
          size = "10"
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