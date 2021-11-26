resource "google_storage_bucket" "storage_bucket" {
  name          = "my-really-awesome-test-bucket"
  location      = "us-east4"

  project       = "my-first-project-331921"
}

resource "google_storage_bucket_object" "content_folder" {
  name          = "shiv.txt"
  content       = "             Hello World...!       "
  bucket        = "${google_storage_bucket.storage_bucket.name}"
}
