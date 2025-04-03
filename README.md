# Hadoop Hive

## Data Preprocessing
* Change the sheet names to all lowercase and without spaces in the sheet names for storing in correct databases.
* place the excel sheet inside the `data` folder with name `data.xlsx`
* Run `xlsx_to_csv.py` to convert xlsx to csv file.
* csv files generates with the sheet names. Verify the correctness of the sheets.


## For storing Excel sheet data and Videos
* chmod +x data/run_hive.sh
*  docker-compose up
* docker exec -it hive-server /bin/bash
* cd ../data
* ./run_hive.sh
* hive
* Normal SQL Operations.


**Reference:** https://hshirodkar.medium.com/apache-hive-on-docker-4d7280ac6f8e

* To View files in hadoop: hdfs dfs -ls /user/hive/warehouse/btpproject.db
