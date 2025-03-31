# apache-adhoop-hive
## Steps:
1. Create a Docker Network
2. Run Hadoop (HDFS and YARN)
   1. Start HDFS
      1. Start Master (Namenode)
      2. Start Slave (DataNode)
   2. Start YARN (Resource Manager)
   3. Start NodeManager (YARN Worker)
4. Start HIVE
   1. Start MetaStore (Hive Database)
   2. Run Hivestore2
5. Verify Setup
    1. docker ps
    2. Test HDFS
       1. docker exec -it namenode hdfs dfs -ls /
    3. Open Hive Shell
6. Connect Hive Remotely


## Commands
### Network create
`
docker network create hadoop-net
`

### Run Hadoop (YARN and HDFS)
`
docker run -d --network hadoop-net --name namenode -p 8020:8020 -p 50070:50070 -v /data/hadoop/namenode:/hadoop/dfs/name -e CLUSTER_NAME=test-cluster bde2020/hadoop-namenode
`






`
docker network ls
`