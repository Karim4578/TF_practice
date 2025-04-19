terraform {
  backend "s3" {
    bucket = "tf-practice-tf-backend-200425"
    region = "ap-south-1"
    key = "Karim/terraform.tfstate"
    encrypt = true
  }
}