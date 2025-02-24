provider "aws" {
  region = "us-east-1"

  assume_role {
    role_arn = "arn:aws:iam::${local.this_account_id}:role/TerraformRole"
  }

  default_tags {
    tags = local.default_tags
  }

  skip_metadata_api_check = true
  skip_region_validation  = true
  allowed_account_ids     = [local.this_account_id]
}

provider "sops" {}