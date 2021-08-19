# !/bin/bash

# Install Cassandra 3.11.9
echo "install Cassandra 3.11.9"
wget https://archive.apache.org/dist/cassandra/3.11.9/apache-cassandra-3.11.9-bin.tar.gz
tar xzf apache-cassandra-3.11.9-bin.tar.gz
mv apache-cassandra-3.11.9 /usr/share/cassandra
rm apache-cassandra-3.11.9-bin.tar.gz
export JAVA_HOME="/usr/bin/java"
export PATH="$PATH:/usr/share/cassandra/bin:/usr/share/cassandra/tools/bin"
/usr/share/cassandra/bin/cassandra -R
while [ `grep "Starting listening for CQL clients" /usr/share/cassandra/logs/system.log | wc -l` -lt 1 ]; do sleep 10; done
echo "done" >> /opt/katacoda-background-finished