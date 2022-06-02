<!-- BEGIN_TF_DOCS -->
# Terraform Cloud ACI Tenant Module

Create and ACI Tenant for Cloud APIC in AWS User Account. When creating a new Tenant in Cisco Cloud APIC for AWS two items are required.
1. The Tenant Name
2. The AWS Account ID to associate the Tenant with.

When executing using Terraform this requires 2 resources to be defined to simplify further this simple module takes in the required variables and creates the new tenant.
Using this module one could manage multiple tenants as part of a terraform plan.

## Cloud APIC Tenant Creation workflow (manual)

Accessed in GUI ```Application Management > Tenants > Actions >> Create Tenant```

![capic-tenant-ui](/example/img/capic-tenant-ui.jpg)

## Example AWS Tenant Creation

Using the module creates the tenant with the supplied name and Account ID. The output provides the DN of the created tenant for use in additional modules or resources.

![workflow-diagram](/example/img/capic-terraform-tenant-workflow.jpg)

```hcl
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
```

## Acknowledgements

Would like to acknowledge [Marina Ferreira](https://github.com/marinalf)'s repo [marinalf/cloudaci-demo-terraform-aws](https://github.com/marinalf/cloudaci-demo-terraform-aws). The work from this repo provides additional information on deploying components in Cloud ACI.

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
| <a name="input_tenant_name"></a> [tenant\_name](#input\_tenant\_name) | Name of managed tenant. | `string` | n/a | yes |
| <a name="input_tenant_description"></a> [tenant\_description](#input\_tenant\_description) | Optional description for managed tenant. | `string` | `null` | no |
| <a name="input_aws_account"></a> [aws\_account](#input\_aws\_account) | AWS Account ID to associate tenant with and trusted state (yes/no), see Cisco Cloud APIC User Guide for more details | <pre>object({<br>    id         = string<br>    is_trusted = string<br>  })</pre> | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_aci_tenant_dn"></a> [aci\_tenant\_dn](#output\_aci\_tenant\_dn) | Outputs the newly created Tenant ID for consumption in subsequent modules or resources |

## Resources

| Name | Type |
|------|------|
| [aci_cloud_aws_provider.capic_aws_provider](https://registry.terraform.io/providers/CiscoDevNet/aci/latest/docs/resources/cloud_aws_provider) | resource |
| [aci_tenant.tenant](https://registry.terraform.io/providers/CiscoDevNet/aci/latest/docs/resources/tenant) | resource |
<!-- END_TF_DOCS -->