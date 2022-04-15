CREATE TABLE warehouse
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
    w_gmt_offset              Float
)
ENGINE = MergeTree 
PARTITION BY w_warehouse_sk
ORDER BY w_warehouse_id 
SETTINGS storage_policy = 'only_local'