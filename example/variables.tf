
variable "name" {
    description = "The name of the MS SQL Database."
    type        = string
}

variable "server_id" {
    description = "The id of the MS SQL Server on which to create the database."
    type        = string
}

variable "auto_pause_delay_in_minutes" {
    description = "Time in minutes after which database is automatically paused. -1 disables automatic pause. Only for Serverless databases."
    type        = number
    default     = null
}

variable "create_mode" {
    description = "The create mode of the database."
    type        = string
    default     = "Default"
}

variable "creation_source_database_id" {
    description = "The ID of the source database from which to create the new database."
    type        = string
    default     = null
}

variable "collation" {
    description = "Specifies the collation of the database."
    type        = string
    default     = null
}

variable "elastic_pool_id" {
    description = "Specifies the ID of the elastic pool containing this database."
    type        = string
    default     = null
}

variable "enclave_type" {
    description = "Specifies the type of enclave to be used by the elastic pool."
    type        = string
    default     = null
}

variable "geo_backup_enabled" {
    description = "Specifies if the Geo Backup Policy is enabled."
    type        = bool
    default     = true
}

variable "maintenance_configuration_name" {
    description = "The name of the Public Maintenance Configuration window to apply to the database."
    type        = string
    default     = "SQL_Default"
}

variable "ledger_enabled" {
    description = "Specifies if this is a ledger database."
    type        = bool
    default     = false
}

variable "license_type" {
    description = "Specifies the license type applied to this database."
    type        = string
    default     = null
}

variable "max_size_gb" {
    description = "The max size of the database in gigabytes."
    type        = number
    default     = null
}

variable "min_capacity" {
    description = "Minimal capacity that database will always have allocated, if not paused. Only for Serverless databases."
    type        = number
    default     = null
}

variable "restore_point_in_time" {
    description = "Specifies the point in time (ISO8601 format) of the source database that will be restored."
    type        = string
    default     = null
}

variable "recover_database_id" {
    description = "The ID of the database to be recovered."
    type        = string
    default     = null
}

variable "recovery_point_id" {
    description = "The ID of the Recovery Services Recovery Point Id to be restored."
    type        = string
    default     = null
}

variable "restore_dropped_database_id" {
    description = "The ID of the database to be restored."
    type        = string
    default     = null
}

variable "restore_long_term_retention_backup_id" {
    description = "The ID of the long term retention backup to be restored."
    type        = string
    default     = null
}

variable "read_replica_count" {
    description = "The number of readonly secondary replicas associated with the database."
    type        = number
    default     = null
}

variable "read_scale" {
    description = "If enabled, connections with application intent set to readonly may be routed to a readonly secondary replica."
    type        = bool
    default     = null
}

variable "sample_name" {
    description = "Specifies the name of the sample schema to apply when creating this database."
    type        = string
    default     = null
}

variable "sku_name" {
    description = "Specifies the name of the SKU used by the database."
    type        = string
    default     = null
}

variable "storage_account_type" {
    description = "Specifies the storage account type used to store backups for this database."
    type        = string
    default     = "Geo"
}

variable "transparent_data_encryption_enabled" {
    description = "If set to true, Transparent Data Encryption will be enabled on the database."
    type        = bool
    default     = true
}

variable "zone_redundant" {
    description = "Whether or not this database is zone redundant."
    type        = bool
    default     = null
}

variable "secondary_type" {
    description = "How do you want your replica to be made? Valid values include Geo and Named."
    type        = string
    default     = "Geo"
}

variable "tags" {
    description = "A mapping of tags to assign to the resource."
    type        = map(string)
    default     = {}
}

variable "import" {
    description = "Import block for database creation from .bacpac file."
    type = object({
        storage_uri                   = string
        storage_key                   = string
        storage_key_type              = string
        administrator_login           = string
        administrator_login_password  = string
        authentication_type           = string
        storage_account_id            = optional(string)
    })
    default = null
}

variable "threat_detection_policy" {
    description = "Threat detection policy block."
    type = object({
        state                       = optional(string, "Disabled")
        disabled_alerts             = optional(list(string))
        email_account_admins        = optional(string, "Disabled")
        email_addresses             = optional(list(string))
        retention_days              = optional(number)
        storage_account_access_key  = optional(string)
        storage_endpoint            = optional(string)
    })
    default = null
}

variable "long_term_retention_policy" {
    description = "Long term retention policy block."
    type = object({
        weekly_retention  = optional(string, "PT0S")
        monthly_retention = optional(string, "PT0S")
        yearly_retention  = optional(string, "PT0S")
        week_of_year      = optional(number)
    })
    default = null
}

variable "short_term_retention_policy" {
    description = "Short term retention policy block."
    type = object({
        retention_days           = number
        backup_interval_in_hours = optional(number, 12)
    })
    default = null
}

variable "identity" {
    description = "Identity block for Managed Service Identity."
    type = object({
        type         = string
        identity_ids = list(string)
    })
    default = null
}

variable "import_storage_uri" {
    description = "Import storage URI."
    type        = string
    default     = null
}

variable "import_storage_key" {
    description = "Import storage key."
    type        = string
    default     = null
}

variable "import_storage_key_type" {
    description = "Import storage key type."
    type        = string
    default     = null
}

variable "import_administrator_login" {
    description = "Import administrator login."
    type        = string
    default     = null
}

variable "import_administrator_login_password" {
    description = "Import administrator login password."
    type        = string
    default     = null
}

variable "import_authentication_type" {
    description = "Import authentication type."
    type        = string
    default     = null
}

variable "import_storage_account_id" {
    description = "Import storage account ID."
    type        = string
    default     = null
}

variable "threat_detection_policy_state" {
    description = "Threat detection policy state."
    type        = string
    default     = null
}

variable "threat_detection_policy_disabled_alerts" {
    description = "Threat detection policy disabled alerts."
    type        = list(string)
    default     = null
}

variable "threat_detection_policy_email_account_admins" {
    description = "Threat detection policy email account admins."
    type        = bool
    default     = null
}

variable "threat_detection_policy_email_addresses" {
    description = "Threat detection policy email addresses."
    type        = list(string)
    default     = null
}

variable "threat_detection_policy_retention_days" {
    description = "Threat detection policy retention days."
    type        = number
    default     = null
}

variable "threat_detection_policy_storage_account_access_key" {
    description = "Threat detection policy storage account access key."
    type        = string
    default     = null
}

variable "threat_detection_policy_storage_endpoint" {
    description = "Threat detection policy storage endpoint."
    type        = string
    default     = null
}

variable "long_term_retention_policy_weekly_retention" {
    description = "Long term retention policy weekly retention."
    type        = string
    default     = null
}

variable "long_term_retention_policy_monthly_retention" {
    description = "Long term retention policy monthly retention."
    type        = string
    default     = null
}

variable "long_term_retention_policy_yearly_retention" {
    description = "Long term retention policy yearly retention."
    type        = string
    default     = null
}

variable "long_term_retention_policy_week_of_year" {
    description = "Long term retention policy week of year."
    type        = number
    default     = null
}

variable "short_term_retention_policy_retention_days" {
    description = "Short term retention policy retention days."
    type        = number
    default     = null
}

variable "short_term_retention_policy_backup_interval_in_hours" {
    description = "Short term retention policy backup interval in hours."
    type        = number
    default     = null
}

variable "identity_type" {
    description = "Identity type."
    type        = string
    default     = null
}

variable "identity_ids" {
    description = "Identity IDs."
    type        = list(string)
    default     = null
}