data "elasticstack_elasticsearch_ingest_processor_append" "elasticsearch_ingest_processor_append_lookup" {
  for_each = var.elasticsearch_ingest_processor_append_lookup

  field            = each.value.field
  value            = each.value.value
  allow_duplicates = each.value.allow_duplicates
  description      = each.value.description
  if               = each.value.if
  ignore_failure   = each.value.ignore_failure
  media_type       = each.value.media_type
  on_failure       = each.value.on_failure
  tag              = each.value.tag
}

