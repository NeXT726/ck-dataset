CREATE TABLE call_center 
(
`cc_call_center_sk` Int8, 
`cc_call_center_id` String,
`cc_rec_start_date` Date, 
`cc_rec_end_date` Date, 
`cc_closed_date_sk` Int8,
`cc_open_date_sk` Int8, 
`cc_name` String, 
`cc_class` String, 
`cc_employees` Int8, 
`cc_sq_ft` Int8, 
`cc_hours` String,
`cc_manager` String,
`cc_mkt_id` Int8,
`cc_mkt_class` String, 
`cc_mkt_desc` String, 
`cc_market_manager` String, 
`cc_division` Int8, 
`cc_division_name` String,
`cc_company` Int8, 
`cc_company_name` String, 
`cc_street_number` String,
`cc_street_name` String, 
`cc_street_type` String, 
`cc_suite_number` String,
`cc_city` String, 
`cc_county` String, 
`cc_state` String, 
`cc_zip` String, 
`cc_country` String, 
`cc_gmt_offset` Float,
`cc_tax_percentage` Float
) 
ENGINE = MergeTree 
PARTITION BY toYYYYMM(cc_rec_start_date) 
ORDER BY cc_call_center_sk 
SETTINGS storage_policy = 'only_local'