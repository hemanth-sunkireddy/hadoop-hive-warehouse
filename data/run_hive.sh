#!/bin/bash

# Run the Hive script to create the database and table
hive -f data_query.hql

# Copy the CSV file to HDFS after the table is created
# hadoop fs -put -f data.csv hdfs://namenode:8020/user/hive/warehouse/kv_demographics.db/kv
hadoop fs -put -f participant.csv hdfs://namenode:8020/user/hive/warehouse/btpProject.db/participant
hadoop fs -put -f participanttest.csv hdfs://namenode:8020/user/hive/warehouse/btpProject.db/participanttest
hadoop fs -put -f refractiveerror.csv hdfs://namenode:8020/user/hive/warehouse/btpProject.db/refractiveerror
hadoop fs -put -f familyvisualhistory.csv hdfs://namenode:8020/user/hive/warehouse/btpProject.db/familyvisualhistory
hadoop fs -put -f visionhistory.csv hdfs://namenode:8020/user/hive/warehouse/btpProject.db/visionhistory
hadoop fs -put -f screentimecomplaints.csv hdfs://namenode:8020/user/hive/warehouse/btpProject.db/screentimecomplaints
hadoop fs -put -f generalhistory.csv hdfs://namenode:8020/user/hive/warehouse/btpProject.db/generalhistory
hadoop fs -put -f testsdone.csv hdfs://namenode:8020/user/hive/warehouse/btpProject.db/testsdone
hadoop fs -put -f primaryobservations.csv hdfs://namenode:8020/user/hive/warehouse/btpProject.db/primaryobservations
hadoop fs -put -f specifictests.csv hdfs://namenode:8020/user/hive/warehouse/btpProject.db/specifictests
hadoop fs -put -f synoptophore.csv hdfs://namenode:8020/user/hive/warehouse/btpProject.db/synoptophore
hadoop fs -put -f complaints.csv hdfs://namenode:8020/user/hive/warehouse/btpProject.db/complaints
hadoop fs -put -f birthhistory.csv hdfs://namenode:8020/user/hive/warehouse/btpProject.db/birthhistory
hadoop fs -put -f additionalinformation.csv hdfs://namenode:8020/user/hive/warehouse/btpProject.db/additionalinformation
