data "grafana_cloud_access_policies" "cloud_access_policies_lookup" {
  for_each = var.cloud_access_policies_lookup

  name_filter   = each.value.name_filter
  region_filter = each.value.region_filter
}

