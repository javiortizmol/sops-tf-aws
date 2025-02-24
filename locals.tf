locals {
    app_name = "SOPS_TF_AWS"
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
        App             = local.app_name
    }
    secret_name = "${local.app_name}_SM"
}