#!/bin/bash

# Run the Hive script to create the database and table
hive -f data_query.hql

# # Copy the CSV file to HDFS after the table is created
# hadoop fs -put -f data.csv hdfs://namenode:8020/user/hive/warehouse/kv_demographics.db/kv


hadoop fs -put -f participant.csv hdfs://namenode:8020/user/hive/warehouse/bsvdatabase.db/participant
hadoop fs -put -f participant_test.csv hdfs://namenode:8020/user/hive/warehouse/bsvdatabase.db/participanttest
hadoop fs -put -f refractive_error.csv hdfs://namenode:8020/user/hive/warehouse/bsvdatabase.db/refractiveerror
hadoop fs -put -f family_visual_history.csv hdfs://namenode:8020/user/hive/warehouse/bsvdatabase.db/familyvisualhistory
hadoop fs -put -f vision_history.csv hdfs://namenode:8020/user/hive/warehouse/bsvdatabase.db/visionhistory
hadoop fs -put -f screen_time_complaints.csv hdfs://namenode:8020/user/hive/warehouse/bsvdatabase.db/screentimecomplaints
hadoop fs -put -f general_history.csv hdfs://namenode:8020/user/hive/warehouse/bsvdatabase.db/generalhistory
hadoop fs -put -f tests_done.csv hdfs://namenode:8020/user/hive/warehouse/bsvdatabase.db/testsdone
hadoop fs -put -f primary_observations.csv hdfs://namenode:8020/user/hive/warehouse/bsvdatabase.db/primaryobservations
hadoop fs -put -f specific_tests.csv hdfs://namenode:8020/user/hive/warehouse/bsvdatabase.db/specifictests
hadoop fs -put -f synoptophore.csv hdfs://namenode:8020/user/hive/warehouse/bsvdatabase.db/synoptophore
hadoop fs -put -f complaints.csv hdfs://namenode:8020/user/hive/warehouse/bsvdatabase.db/complaints
hadoop fs -put -f birth_history.csv hdfs://namenode:8020/user/hive/warehouse/bsvdatabase.db/birthhistory
hadoop fs -put -f additional_information.csv hdfs://namenode:8020/user/hive/warehouse/bsvdatabase.db/additionalinformation


# To store videos of PLR Database
# hdfs dfs -rm -r hdfs://namenode:8020/user/hive/warehouse/plrdatabase.db/videos/
# hdfs dfs -mkdir -p hdfs://namenode:8020/user/hive/warehouse/plrdatabase.db/cropped_videos/
# hdfs dfs -put ./cropped_videos/*.mp4 hdfs://namenode:8020/user/hive/warehouse/plrdatabase.db/cropped_videos/
# hdfs dfs -put videos_metadata.csv hdfs://namenode:8020/user/hive/warehouse/plrdatabase.db/videos_metadata/
# hdfs dfs -mkdir -p hdfs://namenode:8020/user/hive/warehouse/plrdatabase.db/output_csvs/
# hdfs dfs -put ./output_csvs/*.csv hdfs://namenode:8020/user/hive/warehouse/plrdatabase.db/output_csvs/
hadoop fs -put -f video_metadata.csv hdfs://namenode:8020/user/hive/warehouse/plrdatabase.db/cropped_videos_metadata
hadoop fs -put -f combined_file_mapping.csv hdfs://namenode:8020/user/hive/warehouse/plrdatabase.db/participant
hadoop fs -put -f csv_metadata.csv hdfs://namenode:8020/user/hive/warehouse/plrdatabase.db/output_csvs_metadata