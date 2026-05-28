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
    iterator = ipc
    content {
      is_policy_enabled = ipc.value.is_policy_enabled

      key_details {
        kms_key_id = ipc.value.key_details.kms_key_id
      }
    }
  }

  dynamic "logging" {
    for_each = var.logging[*]
    iterator = lg
    content {
      line_format = lg.value.line_format
    }
  }

  security_attributes = var.security_attributes
  dynamic "trace_config" {
    for_each = var.trace_config[*]
    iterator = tc
    content {
      domain_id  = tc.value.domain_id
      is_enabled = tc.value.is_enabled
    }
  }
}
