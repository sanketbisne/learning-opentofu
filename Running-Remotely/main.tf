
# Define a Google Cloud Storage bucket
resource "google_storage_bucket" "example" {
  name          = "sanket-opentofu-bucket-02" # Change to your desired bucket name
  location      = "US" # Change to your desired bucket location
  force_destroy = true # Enable this if you want Terraform to delete the bucket on destroy

  # Add any additional configuration options as needed

}


# google_storage_bucket.example:
resource "google_storage_bucket" "example1" {
    default_event_based_hold    = false
    
    enable_object_retention     = false
    force_destroy               = false
   
    location                    = "ASIA-SOUTH1"
    name                        = "my-first-opentofu-bucket-01"
    project                     = "qwiklabs-gcp-03-51a21544bd25"
    
    public_access_prevention    = "enforced"
    requester_pays              = false
    
    storage_class               = "STANDARD"
    uniform_bucket_level_access = true

    soft_delete_policy {
        
    }
}


