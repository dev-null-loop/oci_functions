output "id" {
  description = "The generated identifier for this function invocation resource."
  value       = oci_functions_invoke_function.this.id
}

output "content" {
  description = "Content of the response string, if any. If `base64_encode_content` is set to `true`, then this content will be base64 encoded."
  value       = oci_functions_invoke_function.this.content
  sensitive   = true
}

output "invoke_endpoint" {
  description = "The function invoke endpoint resolved by the provider."
  value       = oci_functions_invoke_function.this.invoke_endpoint
}
