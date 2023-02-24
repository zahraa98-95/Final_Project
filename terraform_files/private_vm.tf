# my private vm (instance)
resource "google_compute_instance" "private-instance" {
  name         = "private-instance"
  zone         = "us-central1-a"
  machine_type = "e2-small"
  
  

   boot_disk {

    initialize_params {
      image = "debian-cloud/debian-11"
      labels = {
        my_label = "value"
      }
    }
  }


  network_interface {
    network = google_compute_network.myvpc.name
    subnetwork = google_compute_subnetwork.management-subnet.name
  }

  
}