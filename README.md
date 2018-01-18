# AWS S3 Website Hosting Terraform module

Terraform module which creates S3 Website Hosting resources on AWS.

- [S3 WebsiteHosting](https://docs.aws.amazon.com/AmazonS3/latest/dev/WebsiteHosting.html)

## Usage

```hcl
provider "aws" {
  region = "us-west-1"
}

module "s3-website-hosting" {
  source        = "github.com/jyotti/terraform-s3-website-hosting"
  bucket        = "my-hosting-bucket"
}

```

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| bucket | The name of the bucket. | string | - | yes |
| error_document | An absolute path to the document to return in case of a 4XX error. | string | `` | no |
| force_destroy |  | string | `false` | no |
| source_ip | List of allowed IP addresses(default '0.0.0.0/0'). | list | `<list>` | no |

## Outputs

| Name | Description |
|------|-------------|
| website_endpoint | The website endpoint |

