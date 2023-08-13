terraform {
  backend "s3" {
    bucket = "roboshop-s3-terraform"
    key    = "09-state/terraform.tf.state"
    region = "us-east-1"
  }
}

variable "test" {
  default = "Hello"
}

output "test" {
  value = "var.test"
}