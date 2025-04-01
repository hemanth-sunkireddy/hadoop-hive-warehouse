# apache-adhoop-hive

## Temporary HIVE storage commands.
`
 export HIVE_VERSION=4.0.1
`
`
docker run -d -p 10000:10000 -p 10002:10002 --env SERVICE_NAME=hiveserver2 --name hive4 apache/hive:${HIVE_VERSION}
`
`
docker exec -it hiveserver2 beeline -u 'jdbc:hive2://hiveserver2:10000/'
`
`
docker run -p 10000:10000 -d -p 10002:10002 --env SERVICE_NAME=hiveserver2 --name hive4 apache/hive:${HIVE_VERSION}
`
`
docker exec -it hive4 beeline -u 'jdbc:hive2://localhost:10000/'
`
