CREATE TABLE customer                                                                                                       
(                                                                                                                                         
 c_custkey      	UInt32,                                                                                                                   
 c_name           	String,                                                                                                                   
 c_address      	String,                                                                                                                   
 c_city             String,                                                                                                                   
 c_nation       	String,                                                                                                                   
 c_region        	String,                                                                                                                   
 c_phone         	String,                                                                                                                   
 c_mktsegment    	String                                                                                                                    
)                                                                                                                                  
ENGINE = MergeTree ORDER BY (c_custkey)
SETTINGS storage_policy = 'only_local'