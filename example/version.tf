terraform {
  required_version = ">= 1.1.9"

  required_providers {
    aci = {
      source  = "CiscoDevNet/aci"
      version = ">= 2.2.1"
    }
  }
}
