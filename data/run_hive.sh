#!/bin/bash

# Run the Hive script to create the database and table
hive -f data_query.hql

# Copy the CSV file to HDFS after the table is created
# hadoop fs -put -f data.csv hdfs://namenode:8020/user/hive/warehouse/kv_demographics.db/kv
hadoop fs -put -f participant.csv hdfs://namenode:8020/user/hive/warehouse/btpProject.db/participant