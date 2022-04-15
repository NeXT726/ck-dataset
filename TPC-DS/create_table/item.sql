CREATE TABLE item
(
    `i_item_sk` Int8, 
    `i_item_id` String, 
    `i_rec_start_date` Date, 
    `i_rec_end_date` Date, 
    `i_item_desc` String, 
    `i_current_price` Float, 
    `i_wholesale_cost` Float, 
    `i_brand_id` Int8, 
    `i_brand` String, 
    `i_class_id` Int8, 
    `i_class` String, 
    `i_category_id` Int8, 
    `i_category` String, 
    `i_manufact_id` Int8, 
    `i_manufact` String, 
    `i_size` String, 
    `i_formulation` String, 
    `i_color` String, 
    `i_units` String, 
    `i_container` String, 
    `i_manager_id` Int8, 
    `i_product_name` String
)
ENGINE = MergeTree
PARTITION BY (i_item_sk)
ORDER BY (i_item_id)
SETTINGS storage_policy = 'only_local'