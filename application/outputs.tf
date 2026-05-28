output "id" {
  description = "The OCID of the application."
  value       = oci_functions_application.this.id
}

output "compartment_id" {
  description = "The OCID of the compartment that contains the application."
  value       = oci_functions_application.this.compartment_id
}

output "config" {
  description = "Application configuration."
  value       = oci_functions_application.this.config
}

output "defined_tags" {
  description = "Defined tags for this resource."
  value       = oci_functions_application.this.defined_tags
}

output "display_name" {
  description = "The display name of the application."
  value       = oci_functions_application.this.display_name
}

output "freeform_tags" {
  description = "Free-form tags for this resource."
  value       = oci_functions_application.this.freeform_tags
}

output "image_policy_config" {
  description = "Image signature verification policy for the application."
  value       = oci_functions_application.this.image_policy_config
}

output "logging" {
  description = "Application Function logs configuration."
  value       = oci_functions_application.this.logging
}

output "network_security_group_ids" {
  description = "The OCIDs of the Network Security Groups the application belongs to."
  value       = oci_functions_application.this.network_security_group_ids
}

output "security_attributes" {
  description = "Security attributes for this resource."
  value       = oci_functions_application.this.security_attributes
}

output "shape" {
  description = "The shape of the application."
  value       = oci_functions_application.this.shape
}

output "state" {
  description = "The current state of the application."
  value       = oci_functions_application.this.state
}

output "subnet_ids" {
  description = "The subnet OCIDs in which to run functions in the application."
  value       = oci_functions_application.this.subnet_ids
}

output "syslog_url" {
  description = "A syslog URL to which to send all function logs."
  value       = oci_functions_application.this.syslog_url
}

output "time_created" {
  description = "The time the application was created."
  value       = oci_functions_application.this.time_created
}

output "time_updated" {
  description = "The time the application was updated."
  value       = oci_functions_application.this.time_updated
}

output "trace_config" {
  description = "Tracing configuration for the application."
  value       = oci_functions_application.this.trace_config
}
