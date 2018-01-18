provider "aws" {
  region = "us-west-1"
}

module "s3-website-hosting" {
  source        = "../"
  bucket        = "jyotti-s3-website-hosting-example"
  force_destroy = true
}

output "website_endpoint" {
  value = "${module.s3-website-hosting.website_endpoint}"
}
