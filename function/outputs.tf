output "id" {
  description = "The OCID of the function."
  value       = oci_functions_function.this.id
}

output "application_id" {
  description = "The OCID of the application this function belongs to."
  value       = oci_functions_function.this.application_id
}

output "config" {
  description = "Function configuration."
  value       = oci_functions_function.this.config
}

output "defined_tags" {
  description = "Defined tags for this resource."
  value       = oci_functions_function.this.defined_tags
}

output "detached_mode_timeout_in_seconds" {
  description = "Timeout for detached mode execution."
  value       = oci_functions_function.this.detached_mode_timeout_in_seconds
}

output "display_name" {
  description = "The display name of the function."
  value       = oci_functions_function.this.display_name
}

output "failure_destination" {
  description = "The destination for failed function invocations."
  value       = oci_functions_function.this.failure_destination
}

output "freeform_tags" {
  description = "Free-form tags for this resource."
  value       = oci_functions_function.this.freeform_tags
}

output "image" {
  description = "The qualified name of the Docker image used by the function."
  value       = oci_functions_function.this.image
}

output "image_digest" {
  description = "The image digest for the version of the image pulled when invoking this function."
  value       = oci_functions_function.this.image_digest
}

output "invoke_endpoint" {
  description = "The base https invoke URL to set on a client in order to invoke a function."
  value       = oci_functions_function.this.invoke_endpoint
}

output "memory_in_mbs" {
  description = "Maximum usable memory for the function (MiB)."
  value       = oci_functions_function.this.memory_in_mbs
}

output "provisioned_concurrency_config" {
  description = "Provisioned concurrency configuration for the function."
  value       = oci_functions_function.this.provisioned_concurrency_config
}

output "source_details" {
  description = "The source details for the function."
  value       = oci_functions_function.this.source_details
}

output "success_destination" {
  description = "The destination for successful function invocations."
  value       = oci_functions_function.this.success_destination
}

output "timeout_in_seconds" {
  description = "Timeout for executions of the function."
  value       = oci_functions_function.this.timeout_in_seconds
}

output "time_created" {
  description = "The time the function was created."
  value       = oci_functions_function.this.time_created
}

output "time_updated" {
  description = "The time the function was updated."
  value       = oci_functions_function.this.time_updated
}

output "trace_config" {
  description = "Tracing configuration for the function."
  value       = oci_functions_function.this.trace_config
}
