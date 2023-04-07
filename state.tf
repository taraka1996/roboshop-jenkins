terraform {
  backend "s3" {
    bucket = "terraform-tarak"
    key    = "jenkins/terraform.tfstate"
    region = "us-east-1"
  }
}   