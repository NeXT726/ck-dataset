CREATE TABLE lineorder
(
 lo_orderkey            UInt32,
 lo_linenumber          UInt8,
 lo_custkey       	    UInt32,
 lo_partkey             UInt32,
 lo_suppkey             UInt32,
 lo_orderdate           Date,
 lo_orderpriority       String,
 lo_shippriority        UInt8,
 lo_quantity            UInt8,
 lo_extendedprice       UInt32,
 lo_ordtotalprice       UInt32,
 lo_discount            UInt8,
 lo_revenue             UInt32,
 lo_supplycost          UInt32,
 lo_tax                 UInt8,
 lo_commitdate          Date,
 lo_shipmode            String
)
ENGINE = MergeTree PARTITION BY toYear(lo_orderdate) ORDER BY (lo_orderdate, lo_orderkey)
SETTINGS storage_policy = 'only_s3'