variable "tenant_name" {
  type = string
}

variable "tenant_description" {
  type    = string
  default = null
}

variable "aws_account" {
  type = object({
    id         = string
    is_trusted = string
  })
  default = {
    id         = null
    is_trusted = "no"
  }
}
