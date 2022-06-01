module "aws_aci_tenant" {
  source             = "rjohnston6/cloud-apic-tenant/aci"
  version            = "v0.1.0"
  tenant_name        = "terraform_tenant"
  tenant_description = "Created with Terraform" # Optional
  aws_account = {
    id         = "123456789012"
    is_trusted = "yes"
  }
}
