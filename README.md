# Hadoop Hive
**Reference:** https://hshirodkar.medium.com/apache-hive-on-docker-4d7280ac6f8e


## Setup
1. touch docker-compose.yml
2. touch hadoop-hive.env
3. chmod +x data/run_hive.sh
4. docker-compose up
5. docker exec -it hive-server /bin/bash
6. cd ../data
7. hive -f data_query.hql
8. hadoop fs -put -f data.csv hdfs://namenode:8020/user/hive/warehouse/kv_demographics.db/kv
9. hive
10. Normal SQL Operations.
