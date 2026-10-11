variable "psql_configurations" {
  description = <<EOT
Map of psql_configurations, attributes below
Required:
    - compartment_id
    - db_version
    - display_name
    - db_configuration_overrides (block):
        - items (required, block):
            - config_key (required)
            - overriden_config_value (required)
Optional:
    - compatible_shapes
    - defined_tags
    - description
    - freeform_tags
    - instance_memory_size_in_gbs
    - instance_ocpu_count
    - is_flexible
    - shape
    - system_tags
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    compartment_id              = string
    db_version                  = string
    display_name                = string
    compatible_shapes           = optional(list(string))
    defined_tags                = optional(map(string))
    description                 = optional(string)
    freeform_tags               = optional(map(string))
    instance_memory_size_in_gbs = optional(number)
    instance_ocpu_count         = optional(number)
    is_flexible                 = optional(bool)
    shape                       = optional(string)
    system_tags                 = optional(map(string))
    db_configuration_overrides = object({
      items = list(object({
        config_key             = string
        overriden_config_value = string
      }))
    })
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.psql_configurations : (
        length(v.db_configuration_overrides.items) >= 1
      )
    ])
    error_message = "Each items list must contain at least 1 items"
  }
}

