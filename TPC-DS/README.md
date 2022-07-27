TPC-DS是一套决策支持系统测试基准，主要针对零售行业。
提供99个SQL查询（SQL99或2003），分析数据量大，测试数据与实际商业数据高度相似，同时具有各种业务模型。

TPC-DS：建表 ✅ -- 插入数据 ✅ -- 查询 ❌

·建25个表，建表sql语句在create_table中
·插入数据：
    ·通过dsdgen生成数据（sh/data-gen.sh）
    ·将数据文件后缀修改为csv(sh/data-csv.sh)
    ·插入数据(sh/insert.sh)
·生成sql查询语句
    ·通过dsqgen生成sql(sh/sql-gen.sh)
·执行(sh/query.sh)

目前生成的99条查询语句只有一部分可以使用，语法好像不兼容是个大问题


https://github.com/ClickHouse/ClickHouse/issues/9887
ClickHouse好像还没有完全支持TPC-DS的语法！所以TPC-DS不在ck的示例数据集中可能是有原因的。
https://github.com/Altinity/tpc-ds
这是一个在尝试解决TPC-DS与clickhouse语法冲突的库，但还有很多问题没有解决并且很久没有更新