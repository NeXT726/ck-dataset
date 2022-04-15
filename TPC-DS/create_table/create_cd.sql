CREATE TABLE customer_demographics
(
    `cd_demo_sk` Int8, 
    `cd_gender` String, 
    `cd_marital_status` String, 
    `cd_education_status` String, 
    `cd_purchase_estimate` Int8, 
    `cd_credit_rating` String, 
    `cd_dep_count` Int8, 
    `cd_dep_employed_count` Int8, 
    `cd_dep_college_count` Int8
)
ENGINE = MergeTree
PARTITION BY cd_credit_rating
ORDER BY cd_demo_sk
SETTINGS storage_policy = 'only_local'