resource "aws_s3_bucket" "this" {
  bucket        = "${var.bucket}"
  acl           = "public-read"
  force_destroy = "${var.force_destroy}"

  website {
    index_document = "index.html"
    error_document = "${var.error_document}"
  }
}

data "aws_iam_policy_document" "this" {
  statement {
    effect = "Allow"

    principals {
      type        = "AWS"
      identifiers = ["*"]
    }

    actions = [
      "s3:GetObject",
    ]

    resources = ["${aws_s3_bucket.this.arn}/*"]

    condition {
      test     = "IpAddress"
      variable = "aws:SourceIp"
      values   = "${var.source_ip}"
    }
  }
}

resource "aws_s3_bucket_policy" "this" {
  bucket = "${aws_s3_bucket.this.id}"
  policy = "${data.aws_iam_policy_document.this.json}"
}
