resource "oci_psql_configuration" "psql_configurations" {
  for_each = var.psql_configurations

  compartment_id              = each.value.compartment_id
  db_version                  = each.value.db_version
  display_name                = each.value.display_name
  compatible_shapes           = each.value.compatible_shapes
  defined_tags                = each.value.defined_tags
  description                 = each.value.description
  freeform_tags               = each.value.freeform_tags
  instance_memory_size_in_gbs = each.value.instance_memory_size_in_gbs
  instance_ocpu_count         = each.value.instance_ocpu_count
  is_flexible                 = each.value.is_flexible
  shape                       = each.value.shape
  system_tags                 = each.value.system_tags

  db_configuration_overrides {
    dynamic "items" {
      for_each = each.value.db_configuration_overrides.items
      content {
        config_key             = items.value.config_key
        overriden_config_value = items.value.overriden_config_value
      }
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

