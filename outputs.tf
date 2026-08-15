output "appstream_image_builders_id" {
  description = "Map of id values across all appstream_image_builders, keyed the same as var.appstream_image_builders"
  value       = { for k, v in aws_appstream_image_builder.appstream_image_builders : k => v.id if v.id != null && length(v.id) > 0 }
}
output "appstream_image_builders_access_endpoint" {
  description = "Map of access_endpoint values across all appstream_image_builders, keyed the same as var.appstream_image_builders"
  value       = { for k, v in aws_appstream_image_builder.appstream_image_builders : k => v.access_endpoint if v.access_endpoint != null && length(v.access_endpoint) > 0 }
}
output "appstream_image_builders_appstream_agent_version" {
  description = "Map of appstream_agent_version values across all appstream_image_builders, keyed the same as var.appstream_image_builders"
  value       = { for k, v in aws_appstream_image_builder.appstream_image_builders : k => v.appstream_agent_version if v.appstream_agent_version != null && length(v.appstream_agent_version) > 0 }
}
output "appstream_image_builders_arn" {
  description = "Map of arn values across all appstream_image_builders, keyed the same as var.appstream_image_builders"
  value       = { for k, v in aws_appstream_image_builder.appstream_image_builders : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "appstream_image_builders_created_time" {
  description = "Map of created_time values across all appstream_image_builders, keyed the same as var.appstream_image_builders"
  value       = { for k, v in aws_appstream_image_builder.appstream_image_builders : k => v.created_time if v.created_time != null && length(v.created_time) > 0 }
}
output "appstream_image_builders_description" {
  description = "Map of description values across all appstream_image_builders, keyed the same as var.appstream_image_builders"
  value       = { for k, v in aws_appstream_image_builder.appstream_image_builders : k => v.description if v.description != null && length(v.description) > 0 }
}
output "appstream_image_builders_display_name" {
  description = "Map of display_name values across all appstream_image_builders, keyed the same as var.appstream_image_builders"
  value       = { for k, v in aws_appstream_image_builder.appstream_image_builders : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "appstream_image_builders_domain_join_info" {
  description = "Map of domain_join_info values across all appstream_image_builders, keyed the same as var.appstream_image_builders"
  value       = { for k, v in aws_appstream_image_builder.appstream_image_builders : k => one(v.domain_join_info) if v.domain_join_info != null && length(v.domain_join_info) > 0 }
}
output "appstream_image_builders_enable_default_internet_access" {
  description = "Map of enable_default_internet_access values across all appstream_image_builders, keyed the same as var.appstream_image_builders"
  value       = { for k, v in aws_appstream_image_builder.appstream_image_builders : k => v.enable_default_internet_access if v.enable_default_internet_access != null }
}
output "appstream_image_builders_iam_role_arn" {
  description = "Map of iam_role_arn values across all appstream_image_builders, keyed the same as var.appstream_image_builders"
  value       = { for k, v in aws_appstream_image_builder.appstream_image_builders : k => v.iam_role_arn if v.iam_role_arn != null && length(v.iam_role_arn) > 0 }
}
output "appstream_image_builders_image_arn" {
  description = "Map of image_arn values across all appstream_image_builders, keyed the same as var.appstream_image_builders"
  value       = { for k, v in aws_appstream_image_builder.appstream_image_builders : k => v.image_arn if v.image_arn != null && length(v.image_arn) > 0 }
}
output "appstream_image_builders_image_name" {
  description = "Map of image_name values across all appstream_image_builders, keyed the same as var.appstream_image_builders"
  value       = { for k, v in aws_appstream_image_builder.appstream_image_builders : k => v.image_name if v.image_name != null && length(v.image_name) > 0 }
}
output "appstream_image_builders_instance_type" {
  description = "Map of instance_type values across all appstream_image_builders, keyed the same as var.appstream_image_builders"
  value       = { for k, v in aws_appstream_image_builder.appstream_image_builders : k => v.instance_type if v.instance_type != null && length(v.instance_type) > 0 }
}
output "appstream_image_builders_name" {
  description = "Map of name values across all appstream_image_builders, keyed the same as var.appstream_image_builders"
  value       = { for k, v in aws_appstream_image_builder.appstream_image_builders : k => v.name if v.name != null && length(v.name) > 0 }
}
output "appstream_image_builders_region" {
  description = "Map of region values across all appstream_image_builders, keyed the same as var.appstream_image_builders"
  value       = { for k, v in aws_appstream_image_builder.appstream_image_builders : k => v.region if v.region != null && length(v.region) > 0 }
}
output "appstream_image_builders_state" {
  description = "Map of state values across all appstream_image_builders, keyed the same as var.appstream_image_builders"
  value       = { for k, v in aws_appstream_image_builder.appstream_image_builders : k => v.state if v.state != null && length(v.state) > 0 }
}
output "appstream_image_builders_tags" {
  description = "Map of tags values across all appstream_image_builders, keyed the same as var.appstream_image_builders"
  value       = { for k, v in aws_appstream_image_builder.appstream_image_builders : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "appstream_image_builders_tags_all" {
  description = "Map of tags_all values across all appstream_image_builders, keyed the same as var.appstream_image_builders"
  value       = { for k, v in aws_appstream_image_builder.appstream_image_builders : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}
output "appstream_image_builders_vpc_config" {
  description = "Map of vpc_config values across all appstream_image_builders, keyed the same as var.appstream_image_builders"
  value       = { for k, v in aws_appstream_image_builder.appstream_image_builders : k => one(v.vpc_config) if v.vpc_config != null && length(v.vpc_config) > 0 }
}

