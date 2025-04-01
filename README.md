# Hadoop Hive
**Reference:** https://hshirodkar.medium.com/apache-hive-on-docker-4d7280ac6f8e


1. docker-compose up
2. docker exec -it hive-server /bin/bash
3. cd ../data
4. hive -f data_query.hql
5. hadoop fs -put -f data.csv hdfs://namenode:8020/user/hive/warehouse/kv_demographics.db/kv
6. hive
