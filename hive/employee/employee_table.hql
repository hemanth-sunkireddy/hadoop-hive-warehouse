-- Create the new database if it doesn't exist
CREATE DATABASE IF NOT EXISTS daydb;

-- Use the newly created database
USE daydb;

-- Create the external table for the day.csv file
CREATE EXTERNAL TABLE IF NOT EXISTS day (
  First INT,
  Second STRING
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','  -- CSV field separator
LINES TERMINATED BY '\n'  -- Line separator for each row
STORED AS TEXTFILE
LOCATION 'hdfs://namenode:8020/user/hive/warehouse/daydb.db/day';
