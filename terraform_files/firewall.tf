# my firewall-------> resources

resource "google_compute_firewall" "ssh" {
  name    = "ssh"
  network = google_compute_network.myvpc.name

  allow {
    protocol = "tcp"
    ports    = ["22"]
  }

  source_ranges = ["0.0.0.0/0"]
}

resource "google_compute_firewall" "http" {
  name    = "http"
  network = google_compute_network.myvpc.name

  allow {
    protocol = "tcp"
    ports    = ["80"]
  }

  source_ranges = ["0.0.0.0/0"]
}