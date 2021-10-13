provider "aws" {
  region = "us-west-1"
}


terraform {
  backend "s3" {
    bucket = "timur-project-terraform.tfstate"
    key    = "globalvars/terraform.tfstate"
    region = "us-west-1"
  }
}
#----------------------------------------------------------------

output "company_name" {
  value = "ANDESA Soft International"
}
output "owner" {
  value = "Timur Jafarov"
}
output "tags" {
  value = {
    Project    = "Assembly 2021"
    CostCenter = "R&D"
    Country    = "USA"
  }
}
