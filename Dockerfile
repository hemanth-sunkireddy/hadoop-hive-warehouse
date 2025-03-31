FROM apache/hadoop:3.4.1
ENV HADOOP_HOME /opt/hadoop
ENV PATH $PATH:$HADOOP_HOME/bin
COPY ./hadoop-config /opt/hadoop/etc/hadoop/
EXPOSE 50070 8088 9000
CMD ["/opt/hadoop/sbin/start-dfs.sh"]
