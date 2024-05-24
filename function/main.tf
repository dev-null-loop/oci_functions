resource "oci_functions_function" "this" {
  application_id     = var.application_id
  display_name       = var.display_name
  memory_in_mbs      = var.memory_in_mbs
  config             = var.config
  defined_tags       = var.defined_tags
  freeform_tags      = var.freeform_tags
  image              = var.image
  image_digest       = var.image_digest
  timeout_in_seconds = var.timeout_in_seconds

  dynamic "provisioned_concurrency_config" {
    for_each = var.provisioned_concurrency_config[*]
    content {
      strategy = var.provisioned_concurrency_config.strategy
      count    = var.provisioned_concurrency_config.count
    }
  }

  dynamic "source_details" {
    for_each = var.source_details[*]
    content {
      pbf_listing_id = var.source_details.pbf_listing_id
      source_type    = var.source_details.source_type
    }
  }

  dynamic "trace_config" {
    for_each = var.trace_config[*]
    content {
      is_enabled = var.trace_config.is_enabled
    }
  }
}
