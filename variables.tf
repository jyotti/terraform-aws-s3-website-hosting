variable "bucket" {
  description = "The name of the bucket."
}

variable "error_document" {
  description = "An absolute path to the document to return in case of a 4XX error."
  default     = ""
}

variable "source_ip" {
  description = "List of allowed IP addresses(default '0.0.0.0/0')."
  type        = "list"
  default     = ["0.0.0.0/0"]
}

variable "force_destroy" {
  default = false
}
