-- Create the new database if it doesn't exist
CREATE DATABASE IF NOT EXISTS KV_Demographics;

-- Use the newly created database
USE KV_Demographics;

-- Create the table for day.csv file in the database daydb
CREATE TABLE IF NOT EXISTS KV (
  Sr_No INT,
  Name STRING,
  Age INT,
  Gender STRING,
  DOB DATE,
  Participant_ID STRING,
  Visual_History_of_the_family STRING,
  Primary_Observation STRING,
  History_of_eye_head_related_condition STRING,
  Complaints_on_screen STRING,
  Average_Screen_Time STRING,  -- Changed to STRING to accommodate non-integer values like "2-3 hours"
  Outside_Play_Frequency STRING,  -- Describes frequency, can be a string (e.g., "1 day in a week")
  Sleep_Duration STRING  -- Sleep duration can vary, and since it's mentioned as "8-9 hrs of sleep", it could be a string
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','  -- CSV field separator
LINES TERMINATED BY '\n'  -- Line separator for each row
STORED AS TEXTFILE
LOCATION 'hdfs://namenode:8020/user/hive/warehouse/KV_Demographics.db/KV';
