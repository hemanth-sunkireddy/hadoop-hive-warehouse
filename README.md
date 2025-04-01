# Hadoop Hive
**Reference:** https://hshirodkar.medium.com/apache-hive-on-docker-4d7280ac6f8e


## Setup
1. touch docker-compose.yml
2. touch hadoop-hive.env
3. docker-compose up
4. docker exec -it hive-server /bin/bash
5. cd ../data
6. hive -f data_query.hql
7. hadoop fs -put -f data.csv hdfs://namenode:8020/user/hive/warehouse/kv_demographics.db/kv
8. hive
9. Normal SQL Operations.
