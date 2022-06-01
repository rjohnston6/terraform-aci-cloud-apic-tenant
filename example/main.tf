module "aws_aci_tenant" {
  source             = "github.com/rjohnston6/terraform-aci-cloud-apic-aws-tenant"
  tenant_name        = "terraform_tenant"
  tenant_description = "Created with Terraform" # Optional
  aws_account = {
    id         = "123456789012"
    is_trusted = "yes"
  }
}
