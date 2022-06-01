variable "tenant_name" {
  description = "Name of managed tenant."
  type        = string
}

variable "tenant_description" {
  description = "Optional description for managed tenant."
  type        = string
  default     = null
}

variable "aws_account" {
  description = "AWS Account ID to associate tenant with and trusted state (yes/no), see Cisco Cloud APIC User Guide for more details"
  type = object({
    id         = string
    is_trusted = string
  })
}
