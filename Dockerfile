FROM hemanth-sunkireddy/hadoop:latest

# Install openssh-clients (ssh command)
RUN sudo yum install -y openssh-clients

# Continue with the original entrypoint or CMD
CMD ["/opt/hadoop/sbin/start-dfs.sh"]

