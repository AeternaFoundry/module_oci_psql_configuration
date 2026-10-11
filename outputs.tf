output "psql_configurations_id" {
  description = "Map of id values across all psql_configurations, keyed the same as var.psql_configurations except keys with no id are omitted"
  value       = { for k, v in oci_psql_configuration.psql_configurations : k => v.id if v.id != null && length(v.id) > 0 }
}
output "psql_configurations_compartment_id" {
  description = "Map of compartment_id values across all psql_configurations, keyed the same as var.psql_configurations except keys with no compartment_id are omitted"
  value       = { for k, v in oci_psql_configuration.psql_configurations : k => v.compartment_id if v.compartment_id != null && length(v.compartment_id) > 0 }
}
output "psql_configurations_compatible_shapes" {
  description = "Map of compatible_shapes values across all psql_configurations, keyed the same as var.psql_configurations except keys with no compatible_shapes are omitted"
  value       = { for k, v in oci_psql_configuration.psql_configurations : k => v.compatible_shapes if v.compatible_shapes != null && length(v.compatible_shapes) > 0 }
}
output "psql_configurations_config_type" {
  description = "Map of config_type values across all psql_configurations, keyed the same as var.psql_configurations except keys with no config_type are omitted"
  value       = { for k, v in oci_psql_configuration.psql_configurations : k => v.config_type if v.config_type != null && length(v.config_type) > 0 }
}
output "psql_configurations_configuration_details" {
  description = "Map of configuration_details values across all psql_configurations, keyed the same as var.psql_configurations except keys with no configuration_details are omitted"
  value       = { for k, v in oci_psql_configuration.psql_configurations : k => v.configuration_details if v.configuration_details != null && length(v.configuration_details) > 0 }
}
output "psql_configurations_db_configuration_overrides" {
  description = "Map of db_configuration_overrides values across all psql_configurations, keyed the same as var.psql_configurations except keys with no db_configuration_overrides are omitted"
  value       = { for k, v in oci_psql_configuration.psql_configurations : k => one(v.db_configuration_overrides) if v.db_configuration_overrides != null && length(v.db_configuration_overrides) > 0 }
}
output "psql_configurations_db_version" {
  description = "Map of db_version values across all psql_configurations, keyed the same as var.psql_configurations except keys with no db_version are omitted"
  value       = { for k, v in oci_psql_configuration.psql_configurations : k => v.db_version if v.db_version != null && length(v.db_version) > 0 }
}
output "psql_configurations_default_config_id" {
  description = "Map of default_config_id values across all psql_configurations, keyed the same as var.psql_configurations except keys with no default_config_id are omitted"
  value       = { for k, v in oci_psql_configuration.psql_configurations : k => v.default_config_id if v.default_config_id != null && length(v.default_config_id) > 0 }
}
output "psql_configurations_defined_tags" {
  description = "Map of defined_tags values across all psql_configurations, keyed the same as var.psql_configurations except keys with no defined_tags are omitted"
  value       = { for k, v in oci_psql_configuration.psql_configurations : k => v.defined_tags if v.defined_tags != null && length(v.defined_tags) > 0 }
}
output "psql_configurations_description" {
  description = "Map of description values across all psql_configurations, keyed the same as var.psql_configurations except keys with no description are omitted"
  value       = { for k, v in oci_psql_configuration.psql_configurations : k => v.description if v.description != null && length(v.description) > 0 }
}
output "psql_configurations_display_name" {
  description = "Map of display_name values across all psql_configurations, keyed the same as var.psql_configurations except keys with no display_name are omitted"
  value       = { for k, v in oci_psql_configuration.psql_configurations : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "psql_configurations_freeform_tags" {
  description = "Map of freeform_tags values across all psql_configurations, keyed the same as var.psql_configurations except keys with no freeform_tags are omitted"
  value       = { for k, v in oci_psql_configuration.psql_configurations : k => v.freeform_tags if v.freeform_tags != null && length(v.freeform_tags) > 0 }
}
output "psql_configurations_instance_memory_size_in_gbs" {
  description = "Map of instance_memory_size_in_gbs values across all psql_configurations, keyed the same as var.psql_configurations except keys with no instance_memory_size_in_gbs are omitted"
  value       = { for k, v in oci_psql_configuration.psql_configurations : k => v.instance_memory_size_in_gbs if v.instance_memory_size_in_gbs != null }
}
output "psql_configurations_instance_ocpu_count" {
  description = "Map of instance_ocpu_count values across all psql_configurations, keyed the same as var.psql_configurations except keys with no instance_ocpu_count are omitted"
  value       = { for k, v in oci_psql_configuration.psql_configurations : k => v.instance_ocpu_count if v.instance_ocpu_count != null }
}
output "psql_configurations_is_flexible" {
  description = "Map of is_flexible values across all psql_configurations, keyed the same as var.psql_configurations except keys with no is_flexible are omitted"
  value       = { for k, v in oci_psql_configuration.psql_configurations : k => v.is_flexible if v.is_flexible != null }
}
output "psql_configurations_lifecycle_details" {
  description = "Map of lifecycle_details values across all psql_configurations, keyed the same as var.psql_configurations except keys with no lifecycle_details are omitted"
  value       = { for k, v in oci_psql_configuration.psql_configurations : k => v.lifecycle_details if v.lifecycle_details != null && length(v.lifecycle_details) > 0 }
}
output "psql_configurations_shape" {
  description = "Map of shape values across all psql_configurations, keyed the same as var.psql_configurations except keys with no shape are omitted"
  value       = { for k, v in oci_psql_configuration.psql_configurations : k => v.shape if v.shape != null && length(v.shape) > 0 }
}
output "psql_configurations_state" {
  description = "Map of state values across all psql_configurations, keyed the same as var.psql_configurations except keys with no state are omitted"
  value       = { for k, v in oci_psql_configuration.psql_configurations : k => v.state if v.state != null && length(v.state) > 0 }
}
output "psql_configurations_system_tags" {
  description = "Map of system_tags values across all psql_configurations, keyed the same as var.psql_configurations except keys with no system_tags are omitted"
  value       = { for k, v in oci_psql_configuration.psql_configurations : k => v.system_tags if v.system_tags != null && length(v.system_tags) > 0 }
}
output "psql_configurations_time_created" {
  description = "Map of time_created values across all psql_configurations, keyed the same as var.psql_configurations except keys with no time_created are omitted"
  value       = { for k, v in oci_psql_configuration.psql_configurations : k => v.time_created if v.time_created != null && length(v.time_created) > 0 }
}

