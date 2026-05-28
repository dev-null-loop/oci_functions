variable "application_id" {
  description = "(Required) The OCID of the application this function belongs to."
  type        = string
}

variable "display_name" {
  description = "(Required) The display name of the function. The display name must be unique within the application containing the function. Avoid entering confidential information."
  type        = string
}

variable "memory_in_mbs" {
  description = "(Required) (Updatable) Maximum usable memory for the function (MiB)."
  type        = number
}

variable "config" {
  description = "(Optional) (Updatable) Function configuration. These values are passed on to the function as environment variables, this overrides application configuration values. Keys must be ASCII strings consisting solely of letters, digits, and the '_' (underscore) character, and must not begin with a digit. Values should be limited to printable unicode characters."
  type        = map(string)
  default     = null
}

variable "defined_tags" {
  description = "(Optional) (Updatable) Defined tags for this resource. Each key is predefined and scoped to a namespace. For more information, see [Resource Tags](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/resourcetags.htm)."
  type        = map(string)
  default     = null
}

variable "freeform_tags" {
  description = "(Optional) (Updatable) Free-form tags for this resource. Each tag is a simple key-value pair with no predefined name, type, or namespace. For more information, see [Resource Tags](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/resourcetags.htm)."
  type        = map(string)
  default     = null
}

variable "image" {
  description = "(Optional) (Updatable) The qualified name of the Docker image to use in the function, including the image tag. The image should be in the Oracle Cloud Infrastructure Registry that is in the same region as the function itself. This field must be updated if image_digest is updated. Example: `phx.ocir.io/ten/functions/function:0.0.1`"
  type        = string
}

variable "image_digest" {
  description = "(Optional) (Updatable) The image digest for the version of the image that will be pulled when invoking this function. If no value is specified, the digest currently associated with the image in the Oracle Cloud Infrastructure Registry will be used. This field must be updated if image is updated. Example: `sha256:ca0eeb6fb05351dfc8759c20733c91def84cb8007aa89a5bf606bc8b315b9fc7`"
  type        = string
  default     = null
}

variable "timeout_in_seconds" {
  description = "(Optional) (Updatable) Timeout for executions of the function. Value in seconds."
  type        = number
  default     = null
}

variable "provisioned_concurrency_config" {
  description = "(Optional) (Updatable) Define the strategy for provisioned concurrency for the function."
  type = object({
    strategy = string
    count    = number
  })
  default = null
}

variable "source_details" {
  description = "(Optional) The source details for the Function. The function can be created from various sources."
  type = object({
    pbf_listing_id = string
    source_type    = string
  })
  default = null
}

variable "trace_config" {
  description = "(Optional) (Updatable) Define the tracing configuration for a function. "
  type = object({
    is_enabled = optional(bool)
  })
  default = null
}
