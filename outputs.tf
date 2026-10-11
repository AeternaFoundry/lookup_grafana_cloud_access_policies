output "cloud_access_policies_lookup_id" {
  description = "Map of id values across all cloud_access_policies_lookup, keyed the same as var.cloud_access_policies_lookup except keys with no id are omitted"
  value       = { for k, v in data.grafana_cloud_access_policies.cloud_access_policies_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "cloud_access_policies_lookup_access_policies" {
  description = "Map of access_policies values across all cloud_access_policies_lookup, keyed the same as var.cloud_access_policies_lookup except keys with no access_policies are omitted"
  value       = { for k, v in data.grafana_cloud_access_policies.cloud_access_policies_lookup : k => v.access_policies if v.access_policies != null && length(v.access_policies) > 0 }
}
output "cloud_access_policies_lookup_name_filter" {
  description = "Map of name_filter values across all cloud_access_policies_lookup, keyed the same as var.cloud_access_policies_lookup except keys with no name_filter are omitted"
  value       = { for k, v in data.grafana_cloud_access_policies.cloud_access_policies_lookup : k => v.name_filter if v.name_filter != null && length(v.name_filter) > 0 }
}
output "cloud_access_policies_lookup_region_filter" {
  description = "Map of region_filter values across all cloud_access_policies_lookup, keyed the same as var.cloud_access_policies_lookup except keys with no region_filter are omitted"
  value       = { for k, v in data.grafana_cloud_access_policies.cloud_access_policies_lookup : k => v.region_filter if v.region_filter != null && length(v.region_filter) > 0 }
}

