variable "elasticsearch_ingest_processor_append_lookup" {
  description = <<EOT
Map of elasticsearch_ingest_processor_append_lookup, attributes below
Required:
    - field
    - value
Optional:
    - allow_duplicates
    - description
    - if
    - ignore_failure
    - media_type
    - on_failure
    - tag
EOT

  type = map(object({
    field            = string
    value            = list(string)
    allow_duplicates = optional(bool)
    description      = optional(string)
    if               = optional(string)
    ignore_failure   = optional(bool)
    media_type       = optional(string)
    on_failure       = optional(list(string))
    tag              = optional(string)
  }))
}

