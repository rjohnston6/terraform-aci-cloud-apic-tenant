<!-- BEGIN_TF_DOCS -->
# Terraform Cloud ACI Tenant Module

Create and ACI Tenant for Cloud APIC in AWS User Account.

## Examples

### Example AWS Tenant

```hcl
module "aws_aci_tenant" {
  source             = "github.com/rjohnston6/terraform-aci-cloud-apic-aws-tenant"
  tenant_name        = "terraform_tenant"
  tenant_description = "Created with Terraform" # Optional
  aws_account = {
    id         = "123456789012"
    is_trusted = "yes"
  }
}
```

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_aci"></a> [aci](#requirement\_aci) | >=2.2.1 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aci"></a> [aci](#provider\_aci) | >=2.2.1 |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_tenant_name"></a> [tenant\_name](#input\_tenant\_name) | n/a | `string` | n/a | yes |
| <a name="input_tenant_description"></a> [tenant\_description](#input\_tenant\_description) | n/a | `string` | `null` | no |
| <a name="input_aws_account"></a> [aws\_account](#input\_aws\_account) | n/a | <pre>object({<br>    id         = string<br>    is_trusted = string<br>  })</pre> | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_aci_tenant_dn"></a> [aci\_tenant\_dn](#output\_aci\_tenant\_dn) | n/a |

## Resources

| Name | Type |
|------|------|
| [aci_cloud_aws_provider.capic_aws_provider](https://registry.terraform.io/providers/CiscoDevNet/aci/latest/docs/resources/cloud_aws_provider) | resource |
| [aci_tenant.tenant](https://registry.terraform.io/providers/CiscoDevNet/aci/latest/docs/resources/tenant) | resource |
<!-- END_TF_DOCS -->