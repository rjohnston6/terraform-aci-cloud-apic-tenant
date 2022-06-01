output "aci_tenant_dn" {
  description = "Outputs the newly created Tenant ID for consumption in subsequent modules or resources"
  value       = aci_tenant.tenant.id
}
