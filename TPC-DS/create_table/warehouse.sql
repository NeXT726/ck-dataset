create table warehouse
(
    w_warehouse_sk            Int8,
    w_warehouse_id            String,
    w_warehouse_name          String,
    w_warehouse_sq_ft         Int8,
    w_street_number           String,
    w_street_name             String,
    w_street_type             String,
    w_suite_number            String,
    w_city                    String,
    w_county                  String,
    w_state                   String,
    w_zip                     String,
    w_country                 String,
    w_gmt_offset              Float,
    primary key (w_warehouse_sk)
)
ENGINE = MergeTree 
PARTITION BY toYYYYMM(cc_rec_start_date) 
ORDER BY cc_call_center_sk 
SETTINGS storage_policy = 'only_local'