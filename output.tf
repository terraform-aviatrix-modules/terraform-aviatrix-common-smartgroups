output "group_ids" {
  value = {
    any      = var.group_any ? aviatrix_smart_group.any[0].id : null,
    internet = var.group_internet ? aviatrix_smart_group.internet[0].id : null,
    rfc1918  = var.group_rfc1918 ? aviatrix_smart_group.rfc1918[0].id : null,
  }
}
