resource "oci_functions_invoke_function" "this" {
  function_id                         = var.function_id
  invoke_function_body                = var.invoke_function_body
  invoke_function_body_base64_encoded = var.invoke_function_body_base64_encoded
  fn_intent                           = var.fn_intent
  fn_invoke_type                      = var.fn_invoke_type
  is_dry_run                          = var.is_dry_run
  input_body_source_path              = var.input_body_source_path
  base64_encode_content               = var.base64_encode_content
}
