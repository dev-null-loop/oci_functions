resource "oci_functions_application" "this" {
  compartment_id             = var.compartment_id
  display_name               = var.display_name
  subnet_ids                 = var.subnet_ids
  config                     = var.config
  defined_tags               = var.defined_tags
  freeform_tags              = var.freeform_tags
  network_security_group_ids = var.network_security_group_ids
  shape                      = var.shape
  syslog_url                 = var.syslog_url

  dynamic "image_policy_config" {
    for_each = var.image_policy_config[*]
    content {
      is_policy_enabled = var.image_policy_config.is_policy_enabled

      key_details {
        kms_key_id = var.image_policy_config.key_details.kms_key_id
      }
    }
  }

  dynamic "trace_config" {
    for_each = var.trace_config[*]
    content {
      domain_id  = var.trace_config.domain_id
      is_enabled = var.trace_config.is_enabled
    }
  }
}
