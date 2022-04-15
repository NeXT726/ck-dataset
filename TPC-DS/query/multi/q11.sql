SELECT sum(ss_quantity)
FROM store_sales, store, customer_demographics, customer_address, date_dim
WHERE (s_store_sk = ss_store_sk) AND (ss_sold_date_sk = d_date_sk) AND (d_year = 2000) AND (((cd_demo_sk = ss_cdemo_sk) AND (cd_marital_status = 'S') AND (cd_education_status = 'Advanced Degree') AND ((ss_sales_price >= 100.) AND (ss_sales_price <= 150.))) OR ((cd_demo_sk = ss_cdemo_sk) AND (cd_marital_status = 'D') AND (cd_education_status = '4 yr Degree') AND ((ss_sales_price >= 50.) AND (ss_sales_price <= 100.))) OR ((cd_demo_sk = ss_cdemo_sk) AND (cd_marital_status = 'U') AND (cd_education_status = 'Secondary') AND ((ss_sales_price >= 150.) AND (ss_sales_price <= 200.)))) AND (((ss_addr_sk = ca_address_sk) AND (ca_country = 'United States') AND (ca_state IN ('MN', 'TN', 'IL')) AND ((ss_net_profit >= 0) AND (ss_net_profit <= 2000))) OR ((ss_addr_sk = ca_address_sk) AND (ca_country = 'United States') AND (ca_state IN ('TX', 'OR', 'ID')) AND ((ss_net_profit >= 150) AND (ss_net_profit <= 3000))) OR ((ss_addr_sk = ca_address_sk) AND (ca_country = 'United States') AND (ca_state IN ('MI', 'AL', 'RI')) AND ((ss_net_profit >= 50) AND (ss_net_profit <= 25000))))