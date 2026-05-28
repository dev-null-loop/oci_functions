variable "function_id" {
  description = "(Required) The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of this function."
  type        = string
}

variable "invoke_function_body" {
  description = "(Optional) The body of the function invocation. Note: The maximum size of the request is limited. This limit is currently 6MB and the endpoint will not accept requests that are bigger than this limit. Cannot be defined if `input_body_source_path` or `invoke_function_body_base64_encoded` is defined."
  type        = string
  default     = null
}

variable "invoke_function_body_base64_encoded" {
  description = "(Optional) The Base64 encoded body of the function invocation. Base64 encoded input avoids corruption in Terraform state. Cannot be defined if `invoke_function_body` or `input_body_source_path` is defined. Note: The maximum size of the request is limited. This limit is currently 6MB and the endpoint will not accept requests that are bigger than this limit."
  type        = string
  default     = null
}

variable "fn_intent" {
  description = "(Optional) An optional intent header that indicates to the FDK the way the event should be interpreted. E.g. 'httprequest', 'cloudevent'."
  type        = string
  default     = null
}

variable "fn_invoke_type" {
  description = "(Optional) Indicates whether Oracle Functions should execute the request and return the result ('sync') of the execution, or whether Oracle Functions should return as soon as processing has begun ('detached') and leave result handling to the function."
  type        = string
  default     = null
}

variable "is_dry_run" {
  description = "(Optional) Indicates that the request is a dry run, if set to \"true\". A dry run request does not execute the function."
  type        = bool
  default     = null
}

variable "input_body_source_path" {
  description = "(Optional) An absolute path to a file on the local system that contains the input to be provided to the function. Cannot be defined if `invoke_function_body` or `invoke_function_body_base64_encoded` is defined. Note: The maximum size of the request is limited. This limit is currently 6MB and the endpoint will not accept requests that are bigger than this limit."
  type        = string
  default     = null
}

variable "base64_encode_content" {
  description = "(Optional) Encodes the response returned, if any, in base64. It is recommended to set this to `true` to avoid corrupting the returned response, if any, in Terraform state. The default value is `false`."
  type        = bool
  default     = false
}
