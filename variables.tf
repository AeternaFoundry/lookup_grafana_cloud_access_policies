variable "cloud_access_policies_lookup" {
  description = <<EOT
Map of cloud_access_policies_lookup, attributes below
Optional:
    - name_filter
    - region_filter
EOT

  type = map(object({
    name_filter   = optional(string)
    region_filter = optional(string)
  }))
}

