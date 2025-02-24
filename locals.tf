locals {
    environment = terraform.workspace
    account_ids = {
        qa = ""
        prod = ""
    } 
    this_account_id = local.account_ids[terraform.workspace]
    default_tags = {
        Environment     = local.environment
        Managed-by      = "terraform"
        Team            = "DevOps"
        App             = "SOPS_TF_AWS"
    }
}