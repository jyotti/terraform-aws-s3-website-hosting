output "website_endpoint" {
  description = "The website endpoint"
  value       = "${aws_s3_bucket.this.website_endpoint}"
}
