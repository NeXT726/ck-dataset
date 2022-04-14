CREATE TABLE customer
(
    `c_customer_sk` Int8, 
    `c_customer_id` String, 
    `c_current_cdemo_sk` Int8, 
    `c_current_hdemo_sk` Int8, 
    `c_current_addr_sk` Int8, 
    `c_first_shipto_date_sk` Int8, 
    `c_first_sales_date_sk` Int8, 
    `c_salutation` String, 
    `c_first_name` String, 
    `c_last_name` String, 
    `c_preferred_cust_flag` String, 
    `c_birth_day` Int8, 
    `c_birth_month` Int8, 
    `c_birth_year` Int8, 
    `c_birth_country` String, 
    `c_login` String, 
    `c_email_address` String, 
    `c_last_review_date` Int8
)
ENGINE = MergeTree()
PARTITION BY c_birth_country
ORDER BY c_first_sales_date_sk
SETTINGS index_granularity = 8192
