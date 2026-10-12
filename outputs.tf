output "stages_lookup_id" {
  description = "Map of id values across all stages_lookup, keyed the same as var.stages_lookup except keys with no id are omitted"
  value       = { for k, v in data.snowflake_stages.stages_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "stages_lookup_in" {
  description = "Map of in values across all stages_lookup, keyed the same as var.stages_lookup except keys with no in are omitted"
  value       = { for k, v in data.snowflake_stages.stages_lookup : k => one(v.in) if v.in != null && length(v.in) > 0 }
}
output "stages_lookup_like" {
  description = "Map of like values across all stages_lookup, keyed the same as var.stages_lookup except keys with no like are omitted"
  value       = { for k, v in data.snowflake_stages.stages_lookup : k => v.like if v.like != null && length(v.like) > 0 }
}
output "stages_lookup_stages" {
  description = "Map of stages values across all stages_lookup, keyed the same as var.stages_lookup except keys with no stages are omitted"
  value       = { for k, v in data.snowflake_stages.stages_lookup : k => v.stages if v.stages != null && length(v.stages) > 0 }
}
output "stages_lookup_with_describe" {
  description = "Map of with_describe values across all stages_lookup, keyed the same as var.stages_lookup except keys with no with_describe are omitted"
  value       = { for k, v in data.snowflake_stages.stages_lookup : k => v.with_describe if v.with_describe != null }
}

