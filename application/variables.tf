variable "compartment_id" {
  description = "(Required) (Updatable) The OCID of the compartment to create the application within."
  type        = string
}

variable "display_name" {
  description = "(Required) The display name of the application. The display name must be unique within the compartment containing the application. Avoid entering confidential information."
  type        = string
}

variable "subnet_ids" {
  description = "(Required) The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm)s of the subnets in which to run functions in the application."
  type        = list(string)
}

variable "config" {
  description = "(Optional) (Updatable) Application configuration. These values are passed on to the function as environment variables, functions may override application configuration. Keys must be ASCII strings consisting solely of letters, digits, and the '_' (underscore) character, and must not begin with a digit. Values should be limited to printable unicode characters."
  type        = map(string)
  default     = {}
}

variable "defined_tags" {
  description = "(Optional) (Updatable) Defined tags for this resource. Each key is predefined and scoped to a namespace. For more information, see [Resource Tags](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/resourcetags.htm)."
  type        = map(string)
  default     = null
}

variable "freeform_tags" {
  description = "(Optional) (Updatable) Free-form tags for this resource. Each tag is a simple key-value pair with no predefined name, type, or namespace. For more information, see [Resource Tags](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/resourcetags.htm)."
  type        = map(string)
  default     = {}
}

variable "network_security_group_ids" {
  description = "(Optional) (Updatable) The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm)s of the Network Security Groups to add the application to."
  type        = list(string)
  default     = []
}

variable "shape" {
  description = "(Optional) Valid values are `GENERIC_X86`, `GENERIC_ARM` and `GENERIC_X86_ARM`. Default is `GENERIC_X86`. Setting this to `GENERIC_X86`, will run the functions in the application on X86 processor architecture. Setting this to `GENERIC_ARM`, will run the functions in the application on ARM processor architecture. When set to `GENERIC_X86_ARM`, functions in the application are run on either X86 or ARM processor architecture. Accepted values are: `GENERIC_X86`, `GENERIC_ARM`, `GENERIC_X86_ARM`"
  type        = string
  default     = null
}

variable "syslog_url" {
  description = "(Optional) (Updatable) A syslog URL to which to send all function logs. Supports tcp, udp, and tcp+tls. The syslog URL must be reachable from all of the subnets configured for the application. Note: If you enable the Oracle Cloud Infrastructure Logging service for this application, the syslogUrl value is ignored. Function logs are sent to the Oracle Cloud Infrastructure Logging service, and not to the syslog URL.  Example: `tcp://logserver.myserver:1234` "
  type        = string
  default     = null
}

variable "image_policy_config" {
  description = "(Optional) (Updatable) Define the image signature verification policy for an application."
  type = object({
    is_policy_enabled = bool
    key_details = object({
      kms_key_id = string
    })
  })
  default = null
}

variable "logging" {
  description = "(Optional) (Updatable) Application Function logs configuration"
  type = object({
    line_format = optional(string)
  })
  default = null
}

variable "security_attributes" {
  description = "(Optional) (Updatable) Security attributes for this resource."
  type        = map(string)
  default     = null
}

variable "trace_config" {
  description = "(Optional) (Updatable) Define the tracing configuration for an application."
  type = object({
    domain_id  = optional(string)
    is_enabled = optional(bool)
  })
  default = null
}
