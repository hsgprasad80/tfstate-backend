terraform {
  required_version = ">= 1.0.0"
  backend "s3" {}
}

module "tfstate_backend" {
  source        = "git::https://github.com/cloudposse/terraform-aws-tfstate-backend.git?ref=tags/1.1.0"
  namespace     = var.namespace
  name          = var.name
  stage         = var.stage
  attributes    = var.attributes
  tags          = var.tags
  force_destroy = var.force_destroy
  # prevent_unencrypted_uploads  = false
  # enabled             = false
}
