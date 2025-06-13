


module "azure_mssql_database" {
    source = "../"
   name                             = var.name
    server_id                        = var.server_id
    auto_pause_delay_in_minutes      = var.auto_pause_delay_in_minutes
    create_mode                      = var.create_mode
    creation_source_database_id      = var.creation_source_database_id
    collation                        = var.collation
    elastic_pool_id                  = var.elastic_pool_id
    enclave_type                     = var.enclave_type
    geo_backup_enabled               = var.geo_backup_enabled
    maintenance_configuration_name   = var.maintenance_configuration_name
    ledger_enabled                   = var.ledger_enabled
    license_type                     = var.license_type
    max_size_gb                      = var.max_size_gb
    min_capacity                     = var.min_capacity
    restore_point_in_time            = var.restore_point_in_time
    recover_database_id              = var.recover_database_id
    recovery_point_id                = var.recovery_point_id
    restore_dropped_database_id      = var.restore_dropped_database_id
    restore_long_term_retention_backup_id = var.restore_long_term_retention_backup_id
    read_replica_count               = var.read_replica_count
    read_scale                       = var.read_scale
    sample_name                      = var.sample_name
    sku_name                         = var.sku_name
    storage_account_type             = var.storage_account_type
    transparent_data_encryption_enabled = var.transparent_data_encryption_enabled
    zone_redundant                   = var.zone_redundant
    secondary_type                   = var.secondary_type
    tags                             = var.tags

    import = {
            storage_uri                  = var.import_storage_uri
            storage_key                  = var.import_storage_key
            storage_key_type             = var.import_storage_key_type
            administrator_login          = var.import_administrator_login
            administrator_login_password = var.import_administrator_login_password
            authentication_type          = var.import_authentication_type
            storage_account_id           = var.import_storage_account_id
        }

    threat_detection_policy = {
            state                       = var.threat_detection_policy_state
            disabled_alerts             = var.threat_detection_policy_disabled_alerts
            email_account_admins        = var.threat_detection_policy_email_account_admins
            email_addresses             = var.threat_detection_policy_email_addresses
            retention_days              = var.threat_detection_policy_retention_days
            storage_account_access_key  = var.threat_detection_policy_storage_account_access_key
            storage_endpoint            = var.threat_detection_policy_storage_endpoint
        }

    long_term_retention_policy = {
            weekly_retention  = var.long_term_retention_policy_weekly_retention
            monthly_retention = var.long_term_retention_policy_monthly_retention
            yearly_retention  = var.long_term_retention_policy_yearly_retention
            week_of_year      = var.long_term_retention_policy_week_of_year
        }

    short_term_retention_policy = {
            retention_days           = var.short_term_retention_policy_retention_days
            backup_interval_in_hours = var.short_term_retention_policy_backup_interval_in_hours
        }

    identity = {
            type         = var.identity_type
            identity_ids = var.identity_ids
        }

}

