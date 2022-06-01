resource "aci_tenant" "tenant" {
  name        = var.tenant_name
  description = var.tenant_description
}

resource "aci_cloud_aws_provider" "capic_aws_provider" {
  tenant_dn   = aci_tenant.tenant.id
  description = "aws account configuration"
  account_id  = var.aws_account.id
  is_trusted  = var.aws_account.is_trusted
}
