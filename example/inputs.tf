# This variable won't be prompted since there's a default value
variable "resource_group_name" {
  default = ""
}

# This variable is mandatory, since there's no default
variable "location" {}
