variable "appstream_image_builders" {
  description = <<EOT
Map of appstream_image_builders, attributes below
Required:
    - instance_type
    - name
Optional:
    - appstream_agent_version
    - description
    - display_name
    - enable_default_internet_access
    - iam_role_arn
    - image_arn
    - image_name
    - region
    - tags
    - tags_all
    - access_endpoint (block):
        - endpoint_type (required)
        - vpce_id (optional)
    - domain_join_info (block):
        - directory_name (optional)
        - organizational_unit_distinguished_name (optional)
    - vpc_config (block):
        - security_group_ids (optional)
        - subnet_ids (optional)
EOT

  type = map(object({
    instance_type                  = string
    name                           = string
    appstream_agent_version        = optional(string)
    description                    = optional(string)
    display_name                   = optional(string)
    enable_default_internet_access = optional(bool)
    iam_role_arn                   = optional(string)
    image_arn                      = optional(string)
    image_name                     = optional(string)
    region                         = optional(string)
    tags                           = optional(map(string))
    tags_all                       = optional(map(string))
    access_endpoint = optional(list(object({
      endpoint_type = string
      vpce_id       = optional(string)
    })))
    domain_join_info = optional(object({
      directory_name                         = optional(string)
      organizational_unit_distinguished_name = optional(string)
    }))
    vpc_config = optional(object({
      security_group_ids = optional(set(string))
      subnet_ids         = optional(set(string))
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.appstream_image_builders : (
        v.access_endpoint == null || (length(v.access_endpoint) <= 4)
      )
    ])
    error_message = "Each access_endpoint list must contain at most 4 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.appstream_image_builders : (
        v.appstream_agent_version == null || (length(v.appstream_agent_version) >= 1 && length(v.appstream_agent_version) <= 100)
      )
    ])
    error_message = "must be between 1 and 100 characters"
  }
  # Note: 5 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

