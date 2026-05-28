resource "oci_functions_function" "this" {
  application_id     = var.application_id
  display_name       = var.display_name
  memory_in_mbs      = tostring(var.memory_in_mbs)
  config             = var.config
  defined_tags       = var.defined_tags
  freeform_tags      = var.freeform_tags
  image              = var.image
  image_digest       = var.image_digest
  timeout_in_seconds = var.timeout_in_seconds

  dynamic "provisioned_concurrency_config" {
    for_each = var.provisioned_concurrency_config[*]
    iterator = pcc
    content {
      strategy = pcc.value.strategy
      count    = pcc.value.count
    }
  }

  dynamic "source_details" {
    for_each = var.source_details[*]
    iterator = sd
    content {
      pbf_listing_id = sd.value.pbf_listing_id
      source_type    = sd.value.source_type
    }
  }

  dynamic "trace_config" {
    for_each = var.trace_config[*]
    iterator = tc
    content {
      is_enabled = tc.value.is_enabled
    }
  }
}
